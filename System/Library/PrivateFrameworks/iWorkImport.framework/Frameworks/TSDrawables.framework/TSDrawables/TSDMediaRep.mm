@interface TSDMediaRep
- (BOOL)i_shouldRenderStroke:(id)a3;
- (BOOL)isPlaceholder;
- (TSDMediaInfo)mediaInfo;
- (TSDMediaLayout)mediaLayout;
- (void)dealloc;
- (void)updateFrameRep;
- (void)willBeRemoved;
@end

@implementation TSDMediaRep

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSDMediaRep;
  [(TSDStyledRep *)&v2 dealloc];
}

- (TSDMediaInfo)mediaInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (TSDMediaLayout)mediaLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = TSDMediaRep;
  [(TSDRep *)&v2 willBeRemoved];
}

- (BOOL)isPlaceholder
{
  v3 = objc_msgSend_mediaInfo(self, a2, v2);
  isPlaceholder = objc_msgSend_isPlaceholder(v3, v4, v5);

  return isPlaceholder;
}

- (void)updateFrameRep
{
  v4 = objc_msgSend_layout(self, a2, v2);
  v19 = objc_msgSend_stroke(v4, v5, v6);

  if (!objc_msgSend_i_shouldRenderStroke_(self, v7, v19) || !objc_msgSend_isFrame(v19, v8, v9))
  {
    v18 = *&self->super.mFlags;
    if (!v18)
    {
      goto LABEL_11;
    }

    *&self->super.mFlags = 0;
    goto LABEL_10;
  }

  v12 = *&self->super.mFlags;
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = objc_msgSend_frame(v12, v10, v11);

  if (v13 != v19)
  {
    v14 = *&self->super.mFlags;
    *&self->super.mFlags = 0;
  }

  if (!*&self->super.mFlags)
  {
LABEL_7:
    v15 = [TSDFrameRep alloc];
    v17 = objc_msgSend_initWithTSDFrame_(v15, v16, v19);
    v18 = *&self->super.mFlags;
    *&self->super.mFlags = v17;
LABEL_10:
  }

LABEL_11:
}

- (BOOL)i_shouldRenderStroke:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);
  shouldRenderFrameStroke = 0;
  if (v4 && v7 != v4)
  {
    if (objc_msgSend_shouldRender(v4, v8, v9))
    {
      if (objc_msgSend_isFrame(v4, v11, v12))
      {
        v15 = objc_msgSend_mediaLayout(self, v13, v14);
        shouldRenderFrameStroke = objc_msgSend_shouldRenderFrameStroke(v15, v16, v17);
      }

      else
      {
        shouldRenderFrameStroke = 1;
      }
    }

    else
    {
      shouldRenderFrameStroke = 0;
    }
  }

  return shouldRenderFrameStroke;
}

@end