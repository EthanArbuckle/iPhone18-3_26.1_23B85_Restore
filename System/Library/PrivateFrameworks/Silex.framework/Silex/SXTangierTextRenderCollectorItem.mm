@interface SXTangierTextRenderCollectorItem
- (id)description;
- (id)initWithStorage:(void *)a3 layout:(void *)a4 directLayerHost:(char)a5 selectable:(void *)a6 componentIdentifier:;
- (uint64_t)componentIdentifier;
- (uint64_t)directLayerHost;
- (uint64_t)flowRange;
- (uint64_t)selectable;
- (uint64_t)storage;
- (uint64_t)updateWithLayout:(uint64_t)a1;
- (void)appendToFlowStorage:(uint64_t)a1;
- (void)flowInfo;
- (void)flowLayoutWithICC:(void *)a1;
@end

@implementation SXTangierTextRenderCollectorItem

- (id)initWithStorage:(void *)a3 layout:(void *)a4 directLayerHost:(char)a5 selectable:(void *)a6 componentIdentifier:
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = SXTangierTextRenderCollectorItem;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 3, a2);
      objc_storeStrong(a1 + 7, a3);
      objc_storeStrong(a1 + 6, a4);
      *(a1 + 8) = a5;
      objc_storeStrong(a1 + 5, a6);
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      *(a1 + 9) = vnegq_f64(v17);
    }
  }

  return a1;
}

- (uint64_t)updateWithLayout:(uint64_t)a1
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v4 = (a1 + 56);
    if (*(a1 + 56) != v5)
    {
      v10 = v5;
      objc_storeStrong(v4, a2);
      v6 = *(a1 + 64);
      v7 = [v6 layoutController];
      [v7 unregisterLayout:*(a1 + 64)];

      v8 = *(a1 + 64);
      *(a1 + 64) = 0;

      v5 = v10;
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)appendToFlowStorage:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v7 = v4;
    v5 = [v4 length];
    [v7 insertStorage:*(a1 + 24) atCharIndex:v5 dolcContext:0 undoTransaction:0];
    v6 = [v7 length];
    objc_storeStrong((a1 + 32), a2);
    v4 = v7;
    *(a1 + 72) = v5;
    *(a1 + 80) = v6 - v5;
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [[SXTextTangierFlowInfo alloc] initWithStorage:a1[4] range:a1[9], a1[10]];
      v5 = v2[2];
      v2[2] = v4;

      [v2[2] setDirectLayerHost:v2[6]];
      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)flowLayoutWithICC:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[8];
    v5 = a1[6];
    v6 = a1[7];
    v7 = v5;
    [v6 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v3 canvasView];
    [v7 convertRect:v16 toView:{v9, v11, v13, v15}];

    if (v4)
    {
      v17 = [a1[8] geometry];
      [v17 frame];
      v31.origin.x = OUTLINED_FUNCTION_0_0();
      v18 = CGRectEqualToRect(v31, v32);

      if (v18)
      {
LABEL_6:
        a1 = a1[8];
        goto LABEL_7;
      }

      v19 = objc_alloc(MEMORY[0x1E69D5668]);
      v20 = OUTLINED_FUNCTION_0_0();
      v22 = [v21 initWithFrame:v20];
      [a1[8] setGeometry:v22];
    }

    else
    {
      v24 = [SXTextTangierFlowLayout alloc];
      v22 = [(SXTangierTextRenderCollectorItem *)a1 flowInfo];
      v25 = a1[7];
      v26 = OUTLINED_FUNCTION_0_0();
      v28 = [v27 initWithInfo:v26 layout:? frame:?];
      v29 = a1[8];
      a1[8] = v28;
    }

    goto LABEL_6;
  }

LABEL_7:

  return a1;
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
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end