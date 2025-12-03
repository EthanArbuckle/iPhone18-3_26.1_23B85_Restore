@interface SXTangierTextRenderCollectorItem
- (id)description;
- (id)initWithStorage:(void *)storage layout:(void *)layout directLayerHost:(char)host selectable:(void *)selectable componentIdentifier:;
- (uint64_t)componentIdentifier;
- (uint64_t)directLayerHost;
- (uint64_t)flowRange;
- (uint64_t)selectable;
- (uint64_t)storage;
- (uint64_t)updateWithLayout:(uint64_t)layout;
- (void)appendToFlowStorage:(uint64_t)storage;
- (void)flowInfo;
- (void)flowLayoutWithICC:(void *)c;
@end

@implementation SXTangierTextRenderCollectorItem

- (id)initWithStorage:(void *)storage layout:(void *)layout directLayerHost:(char)host selectable:(void *)selectable componentIdentifier:
{
  v12 = a2;
  storageCopy = storage;
  layoutCopy = layout;
  selectableCopy = selectable;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = SXTangierTextRenderCollectorItem;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 3, a2);
      objc_storeStrong(self + 7, storage);
      objc_storeStrong(self + 6, layout);
      *(self + 8) = host;
      objc_storeStrong(self + 5, selectable);
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      *(self + 9) = vnegq_f64(v17);
    }
  }

  return self;
}

- (uint64_t)updateWithLayout:(uint64_t)layout
{
  v4 = a2;
  v5 = v4;
  if (layout)
  {
    v4 = (layout + 56);
    if (*(layout + 56) != v5)
    {
      v10 = v5;
      objc_storeStrong(v4, a2);
      v6 = *(layout + 64);
      layoutController = [v6 layoutController];
      [layoutController unregisterLayout:*(layout + 64)];

      v8 = *(layout + 64);
      *(layout + 64) = 0;

      v5 = v10;
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)appendToFlowStorage:(uint64_t)storage
{
  v4 = a2;
  if (storage)
  {
    v7 = v4;
    v5 = [v4 length];
    [v7 insertStorage:*(storage + 24) atCharIndex:v5 dolcContext:0 undoTransaction:0];
    v6 = [v7 length];
    objc_storeStrong((storage + 32), a2);
    v4 = v7;
    *(storage + 72) = v5;
    *(storage + 80) = v6 - v5;
  }
}

- (uint64_t)storage
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)flowInfo
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = [[SXTextTangierFlowInfo alloc] initWithStorage:self[4] range:self[9], self[10]];
      v5 = selfCopy[2];
      selfCopy[2] = v4;

      [selfCopy[2] setDirectLayerHost:selfCopy[6]];
      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)flowLayoutWithICC:(void *)c
{
  v3 = a2;
  if (c)
  {
    v4 = c[8];
    v5 = c[6];
    v6 = c[7];
    v7 = v5;
    [v6 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    canvasView = [v3 canvasView];
    [v7 convertRect:canvasView toView:{v9, v11, v13, v15}];

    if (v4)
    {
      geometry = [c[8] geometry];
      [geometry frame];
      v31.origin.x = OUTLINED_FUNCTION_0_0();
      v18 = CGRectEqualToRect(v31, v32);

      if (v18)
      {
LABEL_6:
        c = c[8];
        goto LABEL_7;
      }

      v19 = objc_alloc(MEMORY[0x1E69D5668]);
      v20 = OUTLINED_FUNCTION_0_0();
      flowInfo = [v21 initWithFrame:v20];
      [c[8] setGeometry:flowInfo];
    }

    else
    {
      v24 = [SXTextTangierFlowLayout alloc];
      flowInfo = [(SXTangierTextRenderCollectorItem *)c flowInfo];
      v25 = c[7];
      v26 = OUTLINED_FUNCTION_0_0();
      v28 = [v27 initWithInfo:v26 layout:? frame:?];
      v29 = c[8];
      c[8] = v28;
    }

    goto LABEL_6;
  }

LABEL_7:

  return c;
}

- (uint64_t)directLayerHost
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self)
  {
    flowRange = self->_flowRange;
  }

  else
  {
    flowRange.length = 0;
    flowRange.location = 0;
  }

  v6 = NSStringFromRange(flowRange);
  v7 = [v3 stringWithFormat:@"<%@: %p flowRange: %@>", v4, self, v6];;

  return v7;
}

- (uint64_t)flowRange
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)componentIdentifier
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)selectable
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end