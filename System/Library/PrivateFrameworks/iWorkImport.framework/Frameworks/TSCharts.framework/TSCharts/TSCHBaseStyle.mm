@interface TSCHBaseStyle
+ (id)allSpecificsForGeneric:(int)generic;
+ (id)defaultPropertyMap;
+ (id)g_genericToSpecificPropertySetMap;
+ (id)g_gilliganPropertyStringFromProperty:(int)property;
+ (id)g_objectTypeForSpecific:(int)specific;
+ (id)g_specificPropertyToOperationNameBimap;
+ (id)g_specificToGenericPropertyMap;
+ (id)paragraphStyleIndexProperties;
+ (int)g_tangierPropertyFromGilliganPropertyString:(id)string;
+ (void)g_splitProperty:(int)property outStyleOwner:(id *)owner outSpecifier:(id *)specifier outKeyName:(id *)name;
- (float)defaultFloatValueForProperty:(int)property;
- (id)allSpecificsForGeneric:(int)generic;
- (id)boxedDefaultValueForProperty:(int)property;
- (id)customFormatKeys;
- (id)defaultValueForProperty:(int)property;
- (id)g_gilliganPropertyStringFromProperty:(int)property;
- (id)g_objectTypeForSpecific:(int)specific;
- (id)g_specificPropertyToOperationNameBimap;
- (id)g_specificToGenericPropertyMap;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)properties;
- (id)shortDescription;
- (int)defaultIntValueForProperty:(int)property;
- (int)g_tangierPropertyFromGilliganPropertyString:(id)string;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)enumerateFormatObjectsUsingBlock:(id)block;
- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver;
- (void)remapCustomFormatKeysWithOldToNewKeyMap:(id)map;
- (void)transformFormatObjectsUsingBlock:(id)block;
- (void)updateAfterPasteForDocumentRoot:(id)root pasteboardCustomFormatList:(id)list;
- (void)updateForCollaborationForProperties:(id)properties documentRoot:(id)root;
@end

@implementation TSCHBaseStyle

+ (id)g_specificToGenericPropertyMap
{
  if (qword_280A47570 != -1)
  {
    sub_2764A7B04();
  }

  v3 = qword_280A47568;

  return v3;
}

- (id)g_specificToGenericPropertyMap
{
  v2 = objc_opt_class();

  return objc_msgSend_g_specificToGenericPropertyMap(v2, v3, v4, v5, v6);
}

+ (id)g_objectTypeForSpecific:(int)specific
{
  if (qword_280A47580 != -1)
  {
    sub_2764A7B18();
  }

  v7 = qword_280A47578;

  return objc_msgSend_objectForKey_(v7, a2, v3, v4, v5, specific);
}

- (id)g_objectTypeForSpecific:(int)specific
{
  v3 = *&specific;
  v4 = objc_opt_class();

  return objc_msgSend_g_objectTypeForSpecific_(v4, v5, v6, v7, v8, v3);
}

+ (id)g_specificPropertyToOperationNameBimap
{
  if (qword_280A47590 != -1)
  {
    sub_2764A7B2C();
  }

  v3 = qword_280A47588;

  return v3;
}

- (id)g_specificPropertyToOperationNameBimap
{
  v2 = objc_opt_class();

  return objc_msgSend_g_specificPropertyToOperationNameBimap(v2, v3, v4, v5, v6);
}

+ (void)g_splitProperty:(int)property outStyleOwner:(id *)owner outSpecifier:(id *)specifier outKeyName:(id *)name
{
  if (owner)
  {
    *owner = 0;
  }

  if (specifier)
  {
    *specifier = 0;
  }

  if (name)
  {
    *name = 0;
  }

  v6 = property - 1228;
  if ((property - 1228) < 0x2A)
  {
    v7 = off_27A6B7838[v6];
    v8 = off_27A6B7988[v6];
LABEL_9:
    v9 = @"TSCHChartAxis";
    goto LABEL_15;
  }

  v10 = property - 1270;
  if ((property - 1270) < 0x40)
  {
    v9 = off_27A6B7AD8[v10];
    v7 = off_27A6B7CD8[v10];
    v11 = off_27A6B7ED8;
LABEL_14:
    v8 = v11[v10];
    goto LABEL_15;
  }

  v10 = property - 1334;
  if ((property - 1334) < 0x40)
  {
    v9 = off_27A6B80D8[v10];
    v7 = off_27A6B82D8[v10];
    v11 = off_27A6B84D8;
    goto LABEL_14;
  }

  v12 = property - 1398;
  if ((property - 1398) >= 0x40)
  {
    v12 = property - 1462;
    if ((property - 1462) >= 0x40)
    {
      v10 = property - 1526;
      if ((property - 1526) >= 0x40)
      {
        v8 = @"ShowValueLabel";
        v7 = @"Default";
        v9 = @"TSCHReferenceLine";
        switch(property)
        {
          case 1590:
            goto LABEL_15;
          case 1591:
LABEL_31:
            v8 = @"Stroke";
            goto LABEL_15;
          case 1592:
            v8 = @"Type";
            goto LABEL_15;
          case 1593:
            v8 = @"ValueLabelParagraphStyleIndex";
            goto LABEL_15;
          case 1594:
            v8 = @"DEPRECATED3DBarShape";
            goto LABEL_101;
          case 1595:
            v8 = @"DEPRECATED3DBevelEdges";
            goto LABEL_86;
          case 1596:
            v8 = @"DEPRECATED3DBevelEdges";
            goto LABEL_82;
          case 1597:
            v8 = @"DEPRECATED3DBevelEdges";
            goto LABEL_101;
          case 1598:
            v8 = @"DEPRECATED3DBevelEdges";
            goto LABEL_94;
          case 1599:
            v8 = @"DEPRECATED3DLightingPackage";
            goto LABEL_60;
          case 1600:
            v8 = @"DEPRECATED3DLightingPackage";
            goto LABEL_86;
          case 1601:
            v8 = @"DEPRECATED3DLightingPackage";
            goto LABEL_82;
          case 1602:
            v8 = @"DEPRECATED3DLightingPackage";
            goto LABEL_101;
          case 1603:
            v8 = @"DEPRECATED3DLightingPackage";
            goto LABEL_84;
          case 1604:
            v8 = @"DEPRECATED3DLightingPackage";
            goto LABEL_94;
          case 1605:
            v8 = @"DEPRECATED3DShadow";
LABEL_60:
            v7 = @"Area";
            goto LABEL_101;
          case 1606:
            v8 = @"DEPRECATED3DShadow";
LABEL_86:
            v7 = @"Bar";
            goto LABEL_101;
          case 1607:
            v8 = @"DEPRECATED3DShadow";
LABEL_82:
            v7 = @"Column";
            goto LABEL_101;
          case 1608:
            v8 = @"DEPRECATED3DShadow";
LABEL_84:
            v7 = @"Line";
            goto LABEL_101;
          case 1609:
            v8 = @"DEPRECATED3DShadow";
LABEL_94:
            v7 = @"Pie";
            goto LABEL_101;
          case 1610:
            v8 = @"DEPRECATEDAGAINMainFontNamedSize";
            goto LABEL_101;
          case 1611:
            v8 = @"DEPRECATEDMainFontFamily";
            goto LABEL_101;
          case 1612:
            v8 = @"DEPRECATEDMainFontNamedSize";
            goto LABEL_101;
          case 1613:
            v8 = @"DEPRECATEDTrendlineEquationOpacity";
            goto LABEL_101;
          case 1614:
            v8 = @"DEPRECATEDTrendlineEquationParagraphStyleIndex";
            goto LABEL_101;
          case 1615:
            v8 = @"DEPRECATEDTrendlineEquationShadow";
            goto LABEL_101;
          case 1616:
            v8 = @"DEPRECATEDTrendlineRSquaredOpacity";
            goto LABEL_101;
          case 1617:
            v8 = @"DEPRECATEDTrendlineRSquaredParagraphStyleIndex";
            goto LABEL_101;
          case 1618:
            v8 = @"DEPRECATEDTrendlineRSquaredShadow";
LABEL_101:
            v9 = @"TSCHChartInfo";
            goto LABEL_15;
          case 1619:
            v8 = @"DEPRECATED3DFill";
            v7 = @"Area";
            goto LABEL_27;
          case 1620:
            v8 = @"DEPRECATED3DFill";
            v7 = @"Bar";
            goto LABEL_27;
          case 1621:
            v8 = @"DEPRECATED3DFill";
            v7 = @"Column";
            goto LABEL_27;
          case 1622:
            v8 = @"DEPRECATED3DFill";
            goto LABEL_27;
          case 1623:
            v8 = @"DEPRECATED3DFill";
            v7 = @"Line";
            goto LABEL_27;
          case 1624:
            v8 = @"DEPRECATED3DFill";
            goto LABEL_38;
          case 1625:
            v8 = @"DEPRECATEDSeriesLabelsOn";
LABEL_38:
            v7 = @"Pie";
            goto LABEL_27;
          default:
            switch(property)
            {
              case 1024:
                v7 = 0;
                v8 = @"1_0DateFormat";
                goto LABEL_9;
              case 1025:
                v7 = 0;
                v8 = @"1_0NumberFormat";
                goto LABEL_9;
              case 1026:
                v7 = 0;
                v8 = @"3DGridlineOpacity";
                goto LABEL_9;
              case 1027:
                v7 = 0;
                v8 = @"3DGridlineStroke";
                goto LABEL_9;
              case 1028:
                v7 = 0;
                v8 = @"3DLabelPosition";
                goto LABEL_9;
              case 1029:
                v7 = 0;
                v8 = @"DateFormat";
                goto LABEL_9;
              case 1030:
                v7 = 0;
                v8 = @"DurationFormat";
                goto LABEL_9;
              case 1031:
                v7 = 0;
                v8 = @"HorizontalSpacing";
                goto LABEL_9;
              case 1032:
                v7 = 0;
                v8 = @"LabelAngleBaselineDirection";
                goto LABEL_9;
              case 1033:
                v7 = 0;
                v8 = @"LabelExplosion";
                goto LABEL_9;
              case 1034:
                v7 = 0;
                v8 = @"LabelParagraphStyleIndex";
                goto LABEL_9;
              case 1035:
                v7 = 0;
                v8 = @"LabelsOrientation";
                goto LABEL_9;
              case 1036:
                v7 = 0;
                v8 = @"MajorGridlineOpacity";
                goto LABEL_9;
              case 1037:
                v7 = 0;
                v8 = @"MajorGridlineShadow";
                goto LABEL_9;
              case 1038:
                v7 = 0;
                v8 = @"MajorGridlineStroke";
                goto LABEL_9;
              case 1039:
                v7 = 0;
                v8 = @"MinorGridlineOpacity";
                goto LABEL_9;
              case 1040:
                v7 = 0;
                v8 = @"MinorGridlineShadow";
                goto LABEL_9;
              case 1041:
                v7 = 0;
                v8 = @"MinorGridlineStroke";
                goto LABEL_9;
              case 1042:
                v7 = 0;
                v8 = @"NumberFormat";
                goto LABEL_9;
              case 1043:
                v7 = 0;
                v8 = @"NumberFormatType";
                goto LABEL_9;
              case 1044:
                v7 = 0;
                v8 = @"NumberOfDecades";
                goto LABEL_9;
              case 1045:
                v7 = 0;
                v8 = @"NumberOfMajorGridlines";
                goto LABEL_9;
              case 1046:
                v7 = 0;
                v8 = @"NumberOfMinorGridlines";
                goto LABEL_9;
              case 1047:
                v7 = 0;
                v8 = @"PlotToEdges";
                goto LABEL_9;
              case 1048:
                v7 = 0;
                v8 = @"Scale";
                goto LABEL_9;
              case 1049:
                v7 = 0;
                v8 = @"ShowAxis";
                goto LABEL_9;
              case 1050:
                v7 = 0;
                v8 = @"ShowExtensionLines";
                goto LABEL_9;
              case 1051:
                v7 = 0;
                v8 = @"ShowGridlineTickmarks";
                goto LABEL_9;
              default:
                v7 = 0;
                v8 = @"ShowLabels";
                v9 = @"TSCHChartAxis";
                switch(property)
                {
                  case 1052:
                    goto LABEL_15;
                  case 1053:
                    v7 = 0;
                    v8 = @"ShowLastLabel";
                    break;
                  case 1054:
                    v7 = 0;
                    v8 = @"ShowMajorGridlines";
                    break;
                  case 1055:
                    v7 = 0;
                    v8 = @"ShowMajorTickmarks";
                    break;
                  case 1056:
                    v7 = 0;
                    v8 = @"ShowMinimumLabel";
                    break;
                  case 1057:
                    v7 = 0;
                    v8 = @"ShowMinorGridlines";
                    break;
                  case 1058:
                    v7 = 0;
                    v8 = @"ShowMinorTickmarks";
                    break;
                  case 1059:
LABEL_167:
                    v7 = 0;
                    v8 = @"ShowSeriesLabels";
                    break;
                  case 1060:
                    v7 = 0;
                    v8 = @"ShowTitle";
                    break;
                  case 1061:
                    v7 = 0;
                    v8 = @"TickmarkLocation";
                    break;
                  case 1062:
                    v7 = 0;
                    v8 = @"Title";
                    break;
                  case 1063:
                    v7 = 0;
                    v8 = @"TitleParagraphStyleIndex";
                    break;
                  case 1064:
                    v7 = 0;
                    v8 = @"UserMax";
                    break;
                  case 1065:
                    v7 = 0;
                    v8 = @"UserMin";
                    break;
                  case 1066:
                    v7 = 0;
                    v8 = @"VerticalSpacing";
                    break;
                  case 1067:
                    v7 = 0;
                    v8 = @"3DBarShape";
                    goto LABEL_101;
                  case 1068:
                    v7 = 0;
                    v8 = @"3DBevelEdges";
                    goto LABEL_101;
                  case 1069:
                    v7 = 0;
                    v8 = @"3DChartOpacity";
                    goto LABEL_101;
                  case 1070:
                    v7 = 0;
                    v8 = @"3DInterSetDepthGap";
                    goto LABEL_101;
                  case 1071:
                    v7 = 0;
                    v8 = @"3DLightingPackage";
                    goto LABEL_101;
                  case 1072:
                    v7 = 0;
                    v8 = @"3DRotation";
                    goto LABEL_101;
                  case 1073:
                    v7 = 0;
                    v8 = @"3DScale";
                    goto LABEL_101;
                  case 1074:
                    v7 = 0;
                    v8 = @"3DViewport";
                    goto LABEL_101;
                  case 1075:
                    v7 = 0;
                    v8 = @"AxisAnchorLabelAtEnds";
                    goto LABEL_101;
                  case 1076:
                    v7 = 0;
                    v8 = @"BackgroundFill";
                    goto LABEL_101;
                  case 1077:
                    v7 = 0;
                    v8 = @"BackgroundStroke";
                    goto LABEL_101;
                  case 1078:
                    v7 = 0;
                    v8 = @"BorderOpacity";
                    goto LABEL_101;
                  case 1079:
                    v7 = 0;
                    v8 = @"BorderShadow";
                    goto LABEL_101;
                  case 1080:
                    v7 = 0;
                    v8 = @"BorderStroke";
                    goto LABEL_101;
                  case 1081:
                    v7 = 0;
                    v8 = @"CalloutLineType";
                    goto LABEL_101;
                  case 1082:
                    v7 = 0;
                    v8 = @"CombineLayers";
                    goto LABEL_101;
                  case 1090:
                    v7 = 0;
                    v8 = @"DEPRECATEDRoundedCornerOuterEndOnly";
                    goto LABEL_101;
                  case 1091:
                    v7 = 0;
                    v8 = @"DEPRECATEDRoundedCornerRadius";
                    goto LABEL_101;
                  case 1098:
                    v7 = 0;
                    v8 = @"DataSetNameLocation";
                    goto LABEL_101;
                  case 1099:
                    v7 = 0;
                    v8 = @"DataSetNameParagraphStyleIndex";
                    goto LABEL_101;
                  case 1100:
                    v7 = 0;
                    v8 = @"DonutPlaceTitleAtCenter";
                    goto LABEL_101;
                  case 1101:
                    v7 = 0;
                    v8 = @"GridBackgroundFill";
                    goto LABEL_101;
                  case 1102:
                    v7 = 0;
                    v8 = @"GridBackgroundOpacity";
                    goto LABEL_101;
                  case 1103:
                    v7 = 0;
                    v8 = @"InnerRadius";
                    goto LABEL_101;
                  case 1104:
                    v7 = 0;
                    v8 = @"InterBarGap";
                    goto LABEL_101;
                  case 1105:
                    v7 = 0;
                    v8 = @"InterSetGap";
                    goto LABEL_101;
                  case 1106:
                    v7 = 0;
                    v8 = @"MultiDataControlType";
                    goto LABEL_101;
                  case 1107:
                    v7 = 0;
                    v8 = @"PieStartAngle";
                    goto LABEL_101;
                  case 1108:
                    v7 = 0;
                    v8 = @"RadarRadiusGridlineCurve";
                    goto LABEL_101;
                  case 1109:
                    v7 = 0;
                    v8 = @"RadarStartAngle";
                    goto LABEL_101;
                  case 1110:
                    v7 = 0;
                    v8 = @"RoundedCornerOuterEndOnly";
                    goto LABEL_101;
                  case 1111:
                    v7 = 0;
                    v8 = @"RoundedCornerRadius";
                    goto LABEL_101;
                  case 1112:
                    v7 = 0;
                    v8 = @"ShowBorder";
                    goto LABEL_101;
                  case 1113:
                    v7 = 0;
                    v8 = @"ShowLegend";
                    goto LABEL_101;
                  case 1114:
                    v7 = 0;
                    v8 = @"ShowTitle";
                    goto LABEL_101;
                  case 1115:
                    v7 = 0;
                    v8 = @"SkipHiddenData";
                    goto LABEL_101;
                  case 1116:
                    v7 = 0;
                    v8 = @"SummaryLabelDateFormat";
                    goto LABEL_101;
                  case 1117:
                    v7 = 0;
                    v8 = @"SummaryLabelDurationFormat";
                    goto LABEL_101;
                  case 1118:
                    v7 = 0;
                    v8 = @"SummaryLabelNumberFormat";
                    goto LABEL_101;
                  case 1119:
                    v7 = 0;
                    v8 = @"SummaryLabelNumberFormatType";
                    goto LABEL_101;
                  case 1120:
                    v7 = 0;
                    v8 = @"SummaryLabelOffset";
                    goto LABEL_101;
                  case 1121:
                    v7 = 0;
                    v8 = @"SummaryLabelParagraphStyleIndex";
                    goto LABEL_101;
                  case 1122:
                    v7 = 0;
                    v8 = @"SummaryLabelShowLabels";
                    goto LABEL_101;
                  case 1123:
                    v7 = 0;
                    v8 = @"SummaryLabelValueLabelSpacing";
                    goto LABEL_101;
                  case 1124:
                    v7 = 0;
                    v8 = @"Title";
                    goto LABEL_101;
                  case 1125:
                    v7 = 0;
                    v8 = @"TitleColor";
                    goto LABEL_101;
                  case 1126:
                    v7 = 0;
                    v8 = @"TitleParagraphStyleIndex";
                    goto LABEL_101;
                  case 1127:
                    v7 = 0;
                    v8 = @"1_0DateFormat";
                    goto LABEL_27;
                  case 1128:
                    v7 = 0;
                    v8 = @"1_0NumberFormat";
                    goto LABEL_27;
                  default:
                    v7 = 0;
                    v8 = @"2_3LabelExplosion";
                    v9 = @"TSCHChartSeries";
                    switch(property)
                    {
                      case 1129:
                        goto LABEL_15;
                      case 1130:
                        v7 = 0;
                        v8 = @"AdjustmentScale";
                        goto LABEL_15;
                      case 1131:
                        v7 = 0;
                        v8 = @"CalloutLineEndLineEnd";
                        goto LABEL_15;
                      case 1132:
                        v7 = 0;
                        v8 = @"CalloutLineStartLineEnd";
                        goto LABEL_15;
                      case 1133:
                        v7 = 0;
                        v8 = @"CalloutLineStrokeStyle";
                        goto LABEL_15;
                      case 1136:
                        v7 = 0;
                        v8 = @"DateFormat";
                        goto LABEL_15;
                      case 1137:
                        v7 = 0;
                        v8 = @"DurationFormat";
                        goto LABEL_15;
                      case 1138:
                        v7 = 0;
                        v8 = @"EnableCalloutLine";
                        goto LABEL_15;
                      case 1139:
                        v7 = 0;
                        v8 = @"ErrorBarCustomNegativeData";
                        goto LABEL_15;
                      case 1140:
                        v7 = 0;
                        v8 = @"ErrorBarCustomNegativeDataScatterX";
                        goto LABEL_15;
                      case 1141:
                        v7 = 0;
                        v8 = @"ErrorBarCustomPositiveData";
                        goto LABEL_15;
                      case 1142:
                        v7 = 0;
                        v8 = @"ErrorBarCustomPositiveDataScatterX";
                        goto LABEL_15;
                      case 1143:
                        v7 = 0;
                        v8 = @"ErrorBarFixedValue";
                        goto LABEL_15;
                      case 1144:
                        v7 = 0;
                        v8 = @"ErrorBarFixedValueScatterX";
                        goto LABEL_15;
                      case 1145:
                        v7 = 0;
                        v8 = @"ErrorBarLineEnd";
                        goto LABEL_15;
                      case 1146:
                        v7 = 0;
                        v8 = @"ErrorBarLineEndScatterX";
                        goto LABEL_15;
                      case 1147:
                        v7 = 0;
                        v8 = @"ErrorBarPercentValue";
                        goto LABEL_15;
                      case 1148:
                        v7 = 0;
                        v8 = @"ErrorBarPercentValueScatterX";
                        goto LABEL_15;
                      case 1149:
                        v7 = 0;
                        v8 = @"ErrorBarSetting";
                        goto LABEL_15;
                      case 1150:
                        v7 = 0;
                        v8 = @"ErrorBarSettingScatterX";
                        goto LABEL_15;
                      case 1151:
                        v7 = 0;
                        v8 = @"ErrorBarShadow";
                        goto LABEL_15;
                      case 1152:
                        v7 = 0;
                        v8 = @"ErrorBarSpacing";
                        goto LABEL_15;
                      case 1153:
                        v7 = 0;
                        v8 = @"ErrorBarSpacingScatterX";
                        goto LABEL_15;
                      case 1154:
                        v7 = 0;
                        v8 = @"ErrorBarStdDevValue";
                        goto LABEL_15;
                      case 1155:
                        v7 = 0;
                        v8 = @"ErrorBarStdDevValueScatterX";
                        goto LABEL_15;
                      case 1156:
                        v7 = 0;
                        v8 = @"ErrorBarStroke";
                        goto LABEL_15;
                      case 1157:
                        v7 = 0;
                        v8 = @"ErrorBarStrokeScatterX";
                        goto LABEL_15;
                      case 1158:
                        v7 = 0;
                        v8 = @"ErrorBarType";
                        goto LABEL_15;
                      case 1159:
                        v7 = 0;
                        v8 = @"ErrorBarTypeScatterX";
                        goto LABEL_15;
                      case 1160:
                        v7 = 0;
                        v8 = @"Fill";
                        goto LABEL_15;
                      case 1161:
                        v7 = 0;
                        v8 = @"FillUseSeriesStroke";
                        goto LABEL_15;
                      case 1162:
                        v7 = 0;
                        v8 = @"FillUseSeriesStrokeAlphaMultiplier";
                        goto LABEL_15;
                      case 1163:
                        v7 = 0;
                        v8 = @"LabelExplosion";
                        goto LABEL_15;
                      case 1164:
                        v7 = 0;
                        v8 = @"LabelParagraphStyleIndex";
                        goto LABEL_15;
                      case 1165:
                        v7 = 0;
                        v8 = @"LineType";
                        goto LABEL_15;
                      case 1166:
                        v7 = 0;
                        v8 = @"NumberFormat";
                        goto LABEL_15;
                      case 1167:
                        v7 = 0;
                        v8 = @"NumberFormatType";
                        goto LABEL_15;
                      case 1168:
                        v7 = 0;
                        v8 = @"Opacity";
                        goto LABEL_15;
                      case 1169:
                        v7 = 0;
                        v8 = @"OutsideLabelParagraphStyleIndex";
                        goto LABEL_15;
                      case 1170:
                        v7 = 0;
                        v8 = @"PercentNumberFormat";
                        goto LABEL_15;
                      case 1171:
                        v7 = 0;
                        v8 = @"SeriesType";
                        goto LABEL_15;
                      case 1172:
                        v7 = 0;
                        v8 = @"Shadow";
                        goto LABEL_15;
                      case 1173:
                        v7 = 0;
                        v8 = @"ShowErrorBar";
                        goto LABEL_15;
                      case 1174:
                        v7 = 0;
                        v8 = @"ShowErrorBarScatterX";
                        goto LABEL_15;
                      case 1175:
                        v7 = 0;
                        v8 = @"ShowLabelsInFront";
                        goto LABEL_15;
                      case 1176:
                        v7 = 0;
                        v8 = @"ShowLine";
                        goto LABEL_15;
                      case 1177:
                        v7 = 0;
                        v8 = @"ShowNegativeData";
                        goto LABEL_15;
                      case 1178:
                        goto LABEL_167;
                      case 1179:
                        v7 = 0;
                        v8 = @"ShowSymbol";
                        goto LABEL_15;
                      case 1180:
                        v7 = 0;
                        v8 = @"ShowTrendLine";
                        goto LABEL_15;
                      case 1181:
                        v7 = 0;
                        v8 = @"ShowValueLabels";
                        goto LABEL_15;
                      case 1182:
                        v7 = 0;
                        v8 = @"SizeDimension";
                        goto LABEL_15;
                      case 1183:
                        v7 = 0;
                        v8 = @"StackLabels";
                        goto LABEL_15;
                      case 1184:
                        v7 = 0;
                        goto LABEL_31;
                      case 1185:
                        v7 = 0;
                        v8 = @"SymbolFill";
                        goto LABEL_15;
                      case 1186:
                        v7 = 0;
                        v8 = @"SymbolFillUseSeriesFill";
                        goto LABEL_15;
                      case 1187:
                        v7 = 0;
                        v8 = @"SymbolFillUseSeriesStroke";
                        goto LABEL_15;
                      case 1188:
                        v7 = 0;
                        v8 = @"SymbolSize";
                        goto LABEL_15;
                      case 1189:
                        v7 = 0;
                        v8 = @"SymbolStroke";
                        goto LABEL_15;
                      case 1190:
                        v7 = 0;
                        v8 = @"SymbolType";
                        goto LABEL_15;
                      case 1191:
                        v7 = 0;
                        v8 = @"TrendLineEquationOffsetX";
                        goto LABEL_15;
                      case 1192:
                        v7 = 0;
                        v8 = @"TrendLineEquationOffsetY";
                        goto LABEL_15;
                      case 1193:
                        v7 = 0;
                        v8 = @"TrendLineLabelString";
                        goto LABEL_15;
                      case 1194:
                        v7 = 0;
                        v8 = @"TrendLineOrder";
                        goto LABEL_15;
                      default:
                        v9 = 0;
                        if (property > 1194)
                        {
                          v7 = 0;
                          v8 = 0;
                          switch(property)
                          {
                            case 1195:
                              v7 = 0;
                              v8 = @"TrendLinePeriod";
                              goto LABEL_27;
                            case 1196:
                              v7 = 0;
                              v8 = @"TrendLineRSquaredOffsetX";
                              goto LABEL_27;
                            case 1197:
                              v7 = 0;
                              v8 = @"TrendLineRSquaredOffsetY";
                              goto LABEL_27;
                            case 1198:
                              v7 = 0;
                              v8 = @"TrendLineShadow";
                              goto LABEL_27;
                            case 1199:
                              v7 = 0;
                              v8 = @"TrendLineShowEquation";
                              goto LABEL_27;
                            case 1200:
                              v7 = 0;
                              v8 = @"TrendLineShowLabel";
                              goto LABEL_27;
                            case 1201:
                              v7 = 0;
                              v8 = @"TrendLineShowR2Value";
                              goto LABEL_27;
                            case 1202:
                              v7 = 0;
                              v8 = @"TrendLineStroke";
                              goto LABEL_27;
                            case 1203:
                              v7 = 0;
                              v8 = @"TrendLineType";
                              goto LABEL_27;
                            case 1204:
                              v7 = 0;
                              v8 = @"TrendlineEquationOpacity";
                              goto LABEL_27;
                            case 1205:
                              v7 = 0;
                              v8 = @"TrendlineEquationParagraphStyleIndex";
                              goto LABEL_27;
                            case 1206:
                              v7 = 0;
                              v8 = @"TrendlineRSquaredOpacity";
                              goto LABEL_27;
                            case 1207:
                              v7 = 0;
                              v8 = @"TrendlineRSquaredParagraphStyleIndex";
                              goto LABEL_27;
                            case 1208:
                              v7 = 0;
                              v8 = @"ValueLabelPosition";
                              goto LABEL_27;
                            case 1209:
                              v7 = 0;
                              v8 = @"ValueLabelSpacing";
                              goto LABEL_27;
                            case 1210:
                              v7 = 0;
                              v8 = @"ValueLabelsAxis";
                              goto LABEL_27;
                            case 1211:
                              v7 = 0;
                              v8 = @"WedgeExplosion";
                              goto LABEL_27;
                            case 1212:
                              v7 = 0;
                              v8 = @"YAxisOrdinal";
                              goto LABEL_27;
                            case 1213:
                              v7 = 0;
                              v8 = @"Fill";
                              goto LABEL_271;
                            case 1214:
                              v7 = 0;
                              v8 = @"LabelParagraphStyleIndex";
                              goto LABEL_271;
                            case 1215:
                              v7 = 0;
                              v8 = @"Opacity";
                              goto LABEL_271;
                            case 1216:
                              v7 = 0;
                              v8 = @"Shadow";
                              goto LABEL_271;
                            case 1217:
                              v7 = 0;
                              v8 = @"Stroke";
LABEL_271:
                              v9 = @"TSCHLegendModel";
                              goto LABEL_15;
                            case 1218:
                              v7 = 0;
                              v8 = @"CustomValue";
                              goto LABEL_282;
                            case 1219:
                              v7 = 0;
                              v8 = @"Label";
                              goto LABEL_282;
                            case 1220:
                              v7 = 0;
                              v8 = @"LabelParagraphStyleIndex";
                              goto LABEL_282;
                            case 1221:
                              v7 = 0;
                              v8 = @"Shadow";
                              goto LABEL_282;
                            case 1222:
                              v7 = 0;
                              v8 = @"ShowLabel";
                              goto LABEL_282;
                            case 1223:
                              v7 = 0;
                              v8 = @"ShowLine";
                              goto LABEL_282;
                            case 1224:
                              v7 = 0;
                              v8 = @"ShowValueLabel";
                              goto LABEL_282;
                            case 1225:
                              v7 = 0;
                              v8 = @"Stroke";
                              goto LABEL_282;
                            case 1226:
                              v7 = 0;
                              v8 = @"Type";
                              goto LABEL_282;
                            case 1227:
                              v7 = 0;
                              v8 = @"ValueLabelParagraphStyleIndex";
LABEL_282:
                              v9 = @"TSCHReferenceLine";
                              break;
                            default:
                              goto LABEL_15;
                          }

                          goto LABEL_15;
                        }

                        v7 = 0;
                        v8 = 0;
                        switch(property)
                        {
                          case 1083:
                            v7 = 0;
                            v8 = @"DEPRECATED3DBarShape";
                            goto LABEL_101;
                          case 1084:
                            v7 = 0;
                            v8 = @"DEPRECATED3DBevelEdges";
                            goto LABEL_101;
                          case 1085:
                            v7 = 0;
                            v8 = @"DEPRECATED3DLightingPackage";
                            goto LABEL_101;
                          case 1086:
                            v7 = 0;
                            v8 = @"DEPRECATED3DShadow";
                            goto LABEL_101;
                          case 1087:
                            v7 = 0;
                            v8 = @"DEPRECATEDAGAINMainFontNamedSize";
                            goto LABEL_101;
                          case 1088:
                            v7 = 0;
                            v8 = @"DEPRECATEDMainFontFamily";
                            goto LABEL_101;
                          case 1089:
                            v7 = 0;
                            v8 = @"DEPRECATEDMainFontNamedSize";
                            goto LABEL_101;
                          case 1090:
                          case 1091:
                            goto LABEL_15;
                          case 1092:
                            v7 = 0;
                            v8 = @"DEPRECATEDTrendlineEquationOpacity";
                            goto LABEL_101;
                          case 1093:
                            v7 = 0;
                            v8 = @"DEPRECATEDTrendlineEquationParagraphStyleIndex";
                            goto LABEL_101;
                          case 1094:
                            v7 = 0;
                            v8 = @"DEPRECATEDTrendlineEquationShadow";
                            goto LABEL_101;
                          case 1095:
                            v7 = 0;
                            v8 = @"DEPRECATEDTrendlineRSquaredOpacity";
                            goto LABEL_101;
                          case 1096:
                            v7 = 0;
                            v8 = @"DEPRECATEDTrendlineRSquaredParagraphStyleIndex";
                            goto LABEL_101;
                          case 1097:
                            v7 = 0;
                            v8 = @"DEPRECATEDTrendlineRSquaredShadow";
                            goto LABEL_101;
                          default:
                            if (property == 1134)
                            {
                              v7 = 0;
                              v8 = @"DEPRECATED3DFill";
                            }

                            else
                            {
                              v7 = 0;
                              v8 = 0;
                              if (property != 1135)
                              {
                                goto LABEL_15;
                              }

                              v7 = 0;
                              v8 = @"DEPRECATEDSeriesLabelsOn";
                            }

                            break;
                        }

                        break;
                    }

                    goto LABEL_27;
                }

                break;
            }

            goto LABEL_15;
        }
      }

      v9 = off_27A6B8ED8[v10];
      v7 = off_27A6B90D8[v10];
      v11 = off_27A6B92D8;
      goto LABEL_14;
    }

    v7 = off_27A6B8AD8[v12];
    v13 = off_27A6B8CD8;
  }

  else
  {
    v7 = off_27A6B86D8[v12];
    v13 = off_27A6B88D8;
  }

  v8 = v13[v12];
LABEL_27:
  v9 = @"TSCHChartSeries";
LABEL_15:
  if (owner)
  {
    *owner = v9;
  }

  if (specifier)
  {
    *specifier = v7;
  }

  if (name)
  {
    *name = v8;
  }
}

+ (id)g_gilliganPropertyStringFromProperty:(int)property
{
  if (qword_280A475A0 != -1)
  {
    sub_2764A7B40();
  }

  v7 = qword_280A47598;

  return objc_msgSend_objectForKey_(v7, a2, v3, v4, v5, property);
}

- (id)g_gilliganPropertyStringFromProperty:(int)property
{
  v3 = *&property;
  v4 = objc_opt_class();

  return objc_msgSend_g_gilliganPropertyStringFromProperty_(v4, v5, v6, v7, v8, v3);
}

+ (int)g_tangierPropertyFromGilliganPropertyString:(id)string
{
  stringCopy = string;
  if (objc_msgSend_length(stringCopy, v5, v6, v7, v8))
  {
    v13 = objc_msgSend_properties(self, v9, v10, v11, v12);
    v18 = objc_msgSend_propertySet(MEMORY[0x277D80AA8], v14, v15, v16, v17);
    v23 = objc_msgSend_g_specificToGenericPropertyMap(self, v19, v20, v21, v22);
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2762DE89C;
    v41[3] = &unk_27A6B77C8;
    selfCopy = self;
    v24 = stringCopy;
    v42 = v24;
    v45 = &v47;
    v25 = v18;
    v43 = v25;
    v26 = v23;
    v44 = v26;
    objc_msgSend_enumeratePropertiesUsingBlock_(v13, v27, v28, v29, v30, v41);
    v31 = *(v48 + 6);
    if (!v31)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = sub_2762DE938;
      v37[3] = &unk_27A6B77F0;
      selfCopy2 = self;
      v38 = v24;
      v39 = &v47;
      objc_msgSend_enumeratePropertiesUsingBlock_(v25, v32, v33, v34, v35, v37);
      v31 = *(v48 + 6);
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (int)g_tangierPropertyFromGilliganPropertyString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_class();
  v9 = objc_msgSend_g_tangierPropertyFromGilliganPropertyString_(v4, v5, v6, v7, v8, stringCopy);

  return v9;
}

+ (id)g_genericToSpecificPropertySetMap
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2762DEA9C;
  block[3] = &unk_27A6B6250;
  block[4] = self;
  if (qword_280A475B0 != -1)
  {
    dispatch_once(&qword_280A475B0, block);
  }

  v2 = qword_280A475A8;

  return v2;
}

+ (id)allSpecificsForGeneric:(int)generic
{
  v7 = objc_msgSend_g_genericToSpecificPropertySetMap(self, a2, v3, v4, v5);
  v12 = objc_msgSend_objectForKey_(v7, v8, v9, v10, v11, generic);

  return v12;
}

- (id)allSpecificsForGeneric:(int)generic
{
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](v3, sel_allSpecificsForGeneric_, v4, v5, v6);
}

- (void)enumerateFormatObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_formatObjectPropertySet(self, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2762F9D30;
  v15[3] = &unk_27A6B97A0;
  v15[4] = self;
  v10 = blockCopy;
  v16 = v10;
  objc_msgSend_enumeratePropertiesUsingBlock_(v9, v11, v12, v13, v14, v15);
}

- (void)transformFormatObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend_formatObjectPropertySet(self, v5, v6, v7, v8);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2762F9EE0;
  v15[3] = &unk_27A6B97A0;
  v15[4] = self;
  v10 = blockCopy;
  v16 = v10;
  objc_msgSend_enumeratePropertiesUsingBlock_(v9, v11, v12, v13, v14, v15);
}

- (id)customFormatKeys
{
  v6 = objc_msgSend_set(MEMORY[0x277CBEB58], a2, v2, v3, v4);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2762FA1A4;
  v18[3] = &unk_27A6B97C8;
  v7 = v6;
  v19 = v7;
  objc_msgSend_enumerateFormatObjectsUsingBlock_(self, v8, v9, v10, v11, v18);
  v16 = objc_msgSend_copy(v7, v12, v13, v14, v15);

  return v16;
}

- (void)updateAfterPasteForDocumentRoot:(id)root pasteboardCustomFormatList:(id)list
{
  rootCopy = root;
  listCopy = list;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2762FA318;
  v14[3] = &unk_27A6B97F0;
  v15 = rootCopy;
  v16 = listCopy;
  v8 = listCopy;
  v9 = rootCopy;
  objc_msgSend_transformFormatObjectsUsingBlock_(self, v10, v11, v12, v13, v14);
}

- (void)updateForCollaborationForProperties:(id)properties documentRoot:(id)root
{
  rootCopy = root;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2762FA3D0;
  v11[3] = &unk_27A6B9818;
  v12 = rootCopy;
  v6 = rootCopy;
  objc_msgSend_transformFormatObjectsUsingBlock_(self, v7, v8, v9, v10, v11);
}

- (void)remapCustomFormatKeysWithOldToNewKeyMap:(id)map
{
  mapCopy = map;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2762FA488;
  v10[3] = &unk_27A6B9818;
  v11 = mapCopy;
  v5 = mapCopy;
  objc_msgSend_transformFormatObjectsUsingBlock_(self, v6, v7, v8, v9, v10);
}

+ (id)paragraphStyleIndexProperties
{
  v5 = objc_msgSend_properties(self, a2, v2, v3, v4);
  v10 = objc_msgSend_paragraphStyleIndexProperties(TSCHChartInfo, v6, v7, v8, v9);
  v15 = objc_msgSend_propertySetByIntersectingWithPropertySet_(v5, v11, v12, v13, v14, v10);

  return v15;
}

- (id)properties
{
  v2 = objc_opt_class();

  return objc_msgSend_properties(v2, v3, v4, v5, v6);
}

- (id)defaultValueForProperty:(int)property
{
  v3 = *&property;
  v4 = objc_opt_class();

  return objc_msgSend_defaultValueForProperty_(v4, v5, v6, v7, v8, v3);
}

- (int)defaultIntValueForProperty:(int)property
{
  v3 = *&property;
  v4 = objc_opt_class();

  return objc_msgSend_defaultIntValueForProperty_(v4, v5, v6, v7, v8, v3);
}

- (float)defaultFloatValueForProperty:(int)property
{
  v3 = *&property;
  v4 = objc_opt_class();

  objc_msgSend_defaultFloatValueForProperty_(v4, v5, v6, v7, v8, v3);
  return result;
}

- (id)boxedDefaultValueForProperty:(int)property
{
  v3 = *&property;
  v4 = objc_opt_class();

  return objc_msgSend_boxedDefaultValueForProperty_(v4, v5, v6, v7, v8, v3);
}

- (id)shortDescription
{
  v7 = objc_msgSend_stylesheet(self, a2, v2, v3, v4);
  if (v7)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_msgSend_stylesheet(self, v6, v8, v9, v10);
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v19 = objc_msgSend_stylesheet(self, v15, v16, v17, v18);
    v24 = objc_msgSend_stringWithFormat_(v11, v20, v21, v22, v23, @"%@<%p>", v14, v19);
  }

  else
  {
    v24 = @"<nil>";
  }

  v30 = objc_msgSend_parent(self, v25, v26, v27, v28);
  if (v30)
  {
    v34 = objc_msgSend_parent(self, v29, v31, v32, v33);
    v39 = objc_msgSend_shortDescription(v34, v35, v36, v37, v38);
  }

  else
  {
    v39 = @"nil";
  }

  v40 = MEMORY[0x277CCACA8];
  v41 = objc_opt_class();
  v42 = NSStringFromClass(v41);
  v47 = objc_msgSend_name(self, v43, v44, v45, v46);
  v52 = objc_msgSend_styleIdentifier(self, v48, v49, v50, v51);
  if (objc_msgSend_isVariation(self, v53, v54, v55, v56))
  {
    v61 = @"YES";
  }

  else
  {
    v61 = @"NO";
  }

  v62 = objc_msgSend_overridePropertyMap(self, v57, v58, v59, v60);
  v67 = objc_msgSend_count(v62, v63, v64, v65, v66);
  v72 = objc_msgSend_stringWithFormat_(v40, v68, v69, v70, v71, @"%@<%p> name: %@ ident: %@ isVar: %@ overrideCount: %lu stylesheet: %@ parent: [ %@ ]", v42, self, v47, v52, v61, v67, v24, v39);

  return v72;
}

+ (id)defaultPropertyMap
{
  v3 = objc_alloc_init(MEMORY[0x277D80AB8]);
  v8 = objc_msgSend_properties(self, v4, v5, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2763327F4;
  v15[3] = &unk_27A6B9B50;
  selfCopy = self;
  v9 = v3;
  v16 = v9;
  objc_msgSend_enumeratePropertiesUsingBlock_(v8, v10, v11, v12, v13, v15);

  return v9;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "[TSCHBaseStyle mixingTypeWithObject:context:]", context);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBaseStyle.mm");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v17, v18, v19, v8, v13, 82, 0, "%@ does not respond to %s", v15, "[TSCHBaseStyle mixingTypeWithObject:context:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  return 1;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, fraction, v4, v5, "[TSCHBaseStyle mixedObjectWithFraction:ofObject:]");
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBaseStyle.mm");
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v15, v16, v17, v18, v7, v12, 88, 0, "%@ does not respond to %s", v14, "[TSCHBaseStyle mixedObjectWithFraction:ofObject:]");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21, v22);
  return 0;
}

- (void)loadFromPreUFFArchiveWithUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v4 = MEMORY[0x277D81150];
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCHBaseStyle(PreUFFUnarchiving) loadFromPreUFFArchiveWithUnarchiver:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHBaseStyle.mm");
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v17, v18, v19, v20, v9, v14, 98, 0, "Abstract method not overridden by %{public}@", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  v25 = MEMORY[0x277CBEAD8];
  v26 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  v33 = objc_msgSend_stringWithFormat_(v26, v29, v30, v31, v32, @"Abstract method not overridden by %@: %s", v28, "[TSCHBaseStyle(PreUFFUnarchiving) loadFromPreUFFArchiveWithUnarchiver:]");
  v38 = objc_msgSend_exceptionWithName_reason_userInfo_(v25, v34, v35, v36, v37, *MEMORY[0x277CBE658], v33, 0);
  v39 = v38;

  objc_exception_throw(v38);
}

@end