@interface TSDInfoHyperlinkSelection
+ (TSDInfoHyperlinkSelection)selectionWithDrawableInfos:(id)infos openInEditMode:(BOOL)mode;
- (NSSet)unlockedInfos;
- (TSDInfoHyperlinkSelection)initWithDrawableInfos:(id)infos openInEditMode:(BOOL)mode;
- (unint64_t)unlockedInfoCount;
@end

@implementation TSDInfoHyperlinkSelection

+ (TSDInfoHyperlinkSelection)selectionWithDrawableInfos:(id)infos openInEditMode:(BOOL)mode
{
  modeCopy = mode;
  infosCopy = infos;
  v6 = [TSDInfoHyperlinkSelection alloc];
  v8 = objc_msgSend_initWithDrawableInfos_openInEditMode_(v6, v7, infosCopy, modeCopy);

  return v8;
}

- (TSDInfoHyperlinkSelection)initWithDrawableInfos:(id)infos openInEditMode:(BOOL)mode
{
  infosCopy = infos;
  v13.receiver = self;
  v13.super_class = TSDInfoHyperlinkSelection;
  v9 = [(TSDInfoHyperlinkSelection *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(infosCopy, v7, v8);
    drawableInfos = v9->_drawableInfos;
    v9->_drawableInfos = v10;

    v9->_openInEditMode = mode;
  }

  return v9;
}

- (NSSet)unlockedInfos
{
  v3 = objc_msgSend_drawableInfos(self, a2, v2);
  v5 = objc_msgSend_objectsPassingTest_(v3, v4, &unk_288579A08);

  return v5;
}

- (unint64_t)unlockedInfoCount
{
  v3 = objc_msgSend_unlockedInfos(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

@end