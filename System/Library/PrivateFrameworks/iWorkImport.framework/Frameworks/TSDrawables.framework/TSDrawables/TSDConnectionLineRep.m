@interface TSDConnectionLineRep
- (BOOL)shouldSetPathSourceWhenChangingInfoGeometry;
- (id)connectionLineLayout;
- (void)updateFromLayout;
@end

@implementation TSDConnectionLineRep

- (id)connectionLineLayout
{
  objc_opt_class();
  v5 = objc_msgSend_layout(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)updateFromLayout
{
  v14.receiver = self;
  v14.super_class = TSDConnectionLineRep;
  [(TSDRep *)&v14 updateFromLayout];
  v5 = objc_msgSend_shapeLayout(self, v3, v4);
  v8 = objc_msgSend_pathSource(v5, v6, v7);

  if ((objc_msgSend_isEqual_(v8, v9, self->super.mHitTestCache) & 1) == 0)
  {
    v12 = objc_msgSend_copy(v8, v10, v11);
    mHitTestCache = self->super.mHitTestCache;
    self->super.mHitTestCache = v12;
  }
}

- (BOOL)shouldSetPathSourceWhenChangingInfoGeometry
{
  v3 = objc_msgSend_layout(self, a2, v2);
  v6 = objc_msgSend_isInTopLevelContainerForEditing(v3, v4, v5);

  return v6 ^ 1;
}

@end