@interface WFPhotoItemCollectionParameter
- (WFPhotoItemCollectionParameter)initWithDefinition:(id)a3;
@end

@implementation WFPhotoItemCollectionParameter

- (WFPhotoItemCollectionParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WFPhotoItemCollectionParameter;
  v5 = [(WFParameter *)&v21 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"PhotoItemCollectionPickerSelectionLimit"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v5->_selectionLimit = [v8 integerValue];

    v9 = [v4 objectForKey:@"PhotoItemCollectionPickerMode"];
    v10 = objc_opt_class();
    v11 = WFEnforceClass_1501(v9, v10);
    v12 = [v11 copy];
    pickerMode = v5->_pickerMode;
    v5->_pickerMode = v12;

    v14 = [v4 objectForKey:@"PhotoItemCollectionPickerFilter"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);
    v17 = [v16 copy];
    pickerFilter = v5->_pickerFilter;
    v5->_pickerFilter = v17;

    v19 = v5;
  }

  return v5;
}

@end