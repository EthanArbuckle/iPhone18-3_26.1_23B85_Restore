@interface TSCHChartSeriesTypeLine3D
- (id)g_genericToSpecificPropertyMap3DLine;
- (id)genericToSpecificPropertyMap;
- (id)propertiesForReferenceColors;
- (id)userInterfaceName;
@end

@implementation TSCHChartSeriesTypeLine3D

- (id)propertiesForReferenceColors
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276245B2C;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46F28 != -1)
  {
    dispatch_once(&qword_280A46F28, block);
  }

  return qword_280A46F20;
}

- (id)genericToSpecificPropertyMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276245CA0;
  block[3] = &unk_27A6B6888;
  block[4] = self;
  if (qword_280A46F38 != -1)
  {
    dispatch_once(&qword_280A46F38, block);
  }

  return qword_280A46F30;
}

- (id)userInterfaceName
{
  v5 = sub_276360774(v2, v3, v4);
  v10 = objc_msgSend_localizedStringForKey_value_table_(v5, v6, v7, v8, v9, @"Line 3D", &stru_288528678, @"TSCharts");

  return v10;
}

- (id)g_genericToSpecificPropertyMap3DLine
{
  if (qword_280A47530 != -1)
  {
    sub_2764A7AB4();
  }

  v3 = qword_280A47528;

  return v3;
}

@end