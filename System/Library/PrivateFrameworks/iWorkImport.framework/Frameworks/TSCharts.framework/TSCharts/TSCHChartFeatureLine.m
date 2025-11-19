@interface TSCHChartFeatureLine
- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4;
- (id)categoryLabelPositioner;
- (id)defaultDataFileName;
- (id)genericToSpecificPropertyMap;
- (id)userInterfaceName;
@end

@implementation TSCHChartFeatureLine

- (Class)valueAxisClassForID:(id)a3 scale:(int64_t)a4
{
  v9 = objc_msgSend_type(a3, a2, v4, v5, v6);
  if (v9 == 2)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v10 = objc_msgSend_p_selectAxisClassForScale_linearClass_logClass_percentClass_(self, v13, v14, v15, v16, a4, v11, v12, 0);
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
    v10 = @"TSCHDesignDefaultDataLine.plist";
  }

  else
  {
    v10 = @"TSCHDefaultDataLine.plist";
  }

  v11 = v10;

  return v10;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276355EB0;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A47B60 != -1)
  {
    dispatch_once(&qword_280A47B60, block);
  }

  return qword_280A47B58;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Line", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)categoryLabelPositioner
{
  v2 = sub_276156520();
  v3 = 0.5;
  v4 = (1.0 - v2) * 0.5;
  *&v4 = v4;
  *&v3 = 1.0 - *&v4;
  v9[0] = LODWORD(v4);
  *&v9[1] = 1.0 - *&v4;
  v7 = objc_msgSend_horizontalWithRange_(TSCH3DGenericAxisLabelPositioner, v5, v4, v3, v6, v9);

  return v7;
}

@end