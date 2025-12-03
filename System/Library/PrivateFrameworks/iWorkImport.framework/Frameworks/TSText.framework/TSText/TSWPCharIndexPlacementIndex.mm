@interface TSWPCharIndexPlacementIndex
- (TSWPCharIndexPlacementIndex)initWithCharIndex:(unint64_t)index placmentIndex:(int)placmentIndex drawableAttachment:(id)attachment;
- (int64_t)compare:(id)compare;
@end

@implementation TSWPCharIndexPlacementIndex

- (TSWPCharIndexPlacementIndex)initWithCharIndex:(unint64_t)index placmentIndex:(int)placmentIndex drawableAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v13.receiver = self;
  v13.super_class = TSWPCharIndexPlacementIndex;
  v10 = [(TSWPCharIndexPlacementIndex *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_charIndex = index;
    v10->_placementIndex = placmentIndex;
    objc_storeStrong(&v10->_drawableAttachment, attachment);
  }

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v7 = objc_msgSend_placementIndex(compareCopy, v5, v6);
  if (v7 == objc_msgSend_placementIndex(self, v8, v9))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_placementIndex(compareCopy, v10, v11);
    if (v13 < objc_msgSend_placementIndex(self, v14, v15))
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }
  }

  return v12;
}

@end