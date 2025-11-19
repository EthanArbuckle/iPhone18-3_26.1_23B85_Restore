@interface TSCHChartFeatureStackedArea
- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4;
- (id)defaultDataFileName;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartFeatureStackedArea

- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4
{
  v9 = objc_msgSend_type(a3, a2, v4, v5, v6);
  if (v9 == 2)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v10 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v13, v14, v15, v16, a4, v11, 0, v12);
  }

  else if (v9 == 1)
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultDataFileName
{
  v5 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], a2, v2, v3, v4);
  if (objc_msgSend_designModeEnabled(v5, v6, v7, v8, v9))
  {
    v10 = @"TSCHDesignDefaultDataArea.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataStackedArea.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2763574E0;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47BB0 != -1)
  {
    dispatch_once(&qword_280A47BB0, block);
  }

  return qword_280A47BA8;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Stacked Area", &stru_288528678, @"TSCharts");

  return v10;
}

@end