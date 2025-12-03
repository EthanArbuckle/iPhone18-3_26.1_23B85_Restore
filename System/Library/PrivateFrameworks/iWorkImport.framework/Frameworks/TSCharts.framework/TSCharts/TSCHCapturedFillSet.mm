@interface TSCHCapturedFillSet
+ (id)capturedFillSetWithIdentifier:(id)identifier seriesStyles:(id)styles numberOfThemeSeriesStyles:(unint64_t)seriesStyles;
- (TSCHCapturedFillSet)initWithIdentifier:(id)identifier seriesStyles:(id)styles numberOfThemeSeriesStyles:(unint64_t)seriesStyles;
- (id)fillForSeriesIndex:(unint64_t)index seriesType:(id)type context:(id)context;
@end

@implementation TSCHCapturedFillSet

+ (id)capturedFillSetWithIdentifier:(id)identifier seriesStyles:(id)styles numberOfThemeSeriesStyles:(unint64_t)seriesStyles
{
  stylesCopy = styles;
  identifierCopy = identifier;
  v10 = [self alloc];
  v15 = objc_msgSend_initWithIdentifier_seriesStyles_numberOfThemeSeriesStyles_(v10, v11, v12, v13, v14, identifierCopy, stylesCopy, seriesStyles);

  return v15;
}

- (TSCHCapturedFillSet)initWithIdentifier:(id)identifier seriesStyles:(id)styles numberOfThemeSeriesStyles:(unint64_t)seriesStyles
{
  identifierCopy = identifier;
  stylesCopy = styles;
  if (!objc_msgSend_length(identifierCopy, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v14, v15, v16, v17);
    v23 = objc_msgSend_UUIDString(v18, v19, v20, v21, v22);

    identifierCopy = v23;
  }

  v37.receiver = self;
  v37.super_class = TSCHCapturedFillSet;
  v25 = [(TSCHFillSet *)&v37 initWithIdentifier:identifierCopy plistPath:0];
  if (v25)
  {
    seriesStylesCopy = objc_msgSend_count(stylesCopy, v24, v26, v27, v28);
    if (seriesStylesCopy >= seriesStyles)
    {
      seriesStylesCopy = seriesStyles;
    }

    if (!seriesStylesCopy)
    {
      seriesStylesCopy = objc_msgSend_count(stylesCopy, v30, v31, v32, v33);
    }

    if (seriesStylesCopy >> 31)
    {
      sub_2764A6BE8(v31, v32, v33, seriesStylesCopy, v30);
    }

    else
    {
      v25->_numberOfThemeSeriesStyles = seriesStylesCopy;
    }

    v34 = objc_msgSend_copy(stylesCopy, v30, v31, v32, v33);
    seriesStyles = v25->_seriesStyles;
    v25->_seriesStyles = v34;
  }

  return v25;
}

- (id)fillForSeriesIndex:(unint64_t)index seriesType:(id)type context:(id)context
{
  typeCopy = type;
  objc_opt_class();
  v12 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesStyles, v8, v9, v10, v11, index % self->_numberOfThemeSeriesStyles);
  v13 = TSUCheckedDynamicCast();

  v18 = objc_msgSend_specificFillSetFillProperty(typeCopy, v14, v15, v16, v17);
  v23 = objc_msgSend_valueForProperty_(v13, v19, v20, v21, v22, v18);

  return v23;
}

@end