@interface TSCHCapturedFillSet
+ (id)capturedFillSetWithIdentifier:(id)a3 seriesStyles:(id)a4 numberOfThemeSeriesStyles:(unint64_t)a5;
- (TSCHCapturedFillSet)initWithIdentifier:(id)a3 seriesStyles:(id)a4 numberOfThemeSeriesStyles:(unint64_t)a5;
- (id)fillForSeriesIndex:(unint64_t)a3 seriesType:(id)a4 context:(id)a5;
@end

@implementation TSCHCapturedFillSet

+ (id)capturedFillSetWithIdentifier:(id)a3 seriesStyles:(id)a4 numberOfThemeSeriesStyles:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  v15 = objc_msgSend_initWithIdentifier_seriesStyles_numberOfThemeSeriesStyles_(v10, v11, v12, v13, v14, v9, v8, a5);

  return v15;
}

- (TSCHCapturedFillSet)initWithIdentifier:(id)a3 seriesStyles:(id)a4 numberOfThemeSeriesStyles:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!objc_msgSend_length(v8, v10, v11, v12, v13))
  {
    v18 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v14, v15, v16, v17);
    v23 = objc_msgSend_UUIDString(v18, v19, v20, v21, v22);

    v8 = v23;
  }

  v37.receiver = self;
  v37.super_class = TSCHCapturedFillSet;
  v25 = [(TSCHFillSet *)&v37 initWithIdentifier:v8 plistPath:0];
  if (v25)
  {
    v29 = objc_msgSend_count(v9, v24, v26, v27, v28);
    if (v29 >= a5)
    {
      v29 = a5;
    }

    if (!v29)
    {
      v29 = objc_msgSend_count(v9, v30, v31, v32, v33);
    }

    if (v29 >> 31)
    {
      sub_2764A6BE8(v31, v32, v33, v29, v30);
    }

    else
    {
      v25->_numberOfThemeSeriesStyles = v29;
    }

    v34 = objc_msgSend_copy(v9, v30, v31, v32, v33);
    seriesStyles = v25->_seriesStyles;
    v25->_seriesStyles = v34;
  }

  return v25;
}

- (id)fillForSeriesIndex:(unint64_t)a3 seriesType:(id)a4 context:(id)a5
{
  v7 = a4;
  objc_opt_class();
  v12 = objc_msgSend_objectAtIndexedSubscript_(self->_seriesStyles, v8, v9, v10, v11, a3 % self->_numberOfThemeSeriesStyles);
  v13 = TSUCheckedDynamicCast();

  v18 = objc_msgSend_specificFillSetFillProperty(v7, v14, v15, v16, v17);
  v23 = objc_msgSend_valueForProperty_(v13, v19, v20, v21, v22, v18);

  return v23;
}

@end