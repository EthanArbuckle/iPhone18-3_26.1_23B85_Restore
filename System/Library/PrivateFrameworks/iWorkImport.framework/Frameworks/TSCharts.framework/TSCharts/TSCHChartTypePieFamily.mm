@interface TSCHChartTypePieFamily
- (BOOL)shouldChangeExplosionWithPreviousChartType:(id)type chartInfo:(id)info seriesList:(id)list;
- (id)animationDeliveryStylesForFilter:(id)filter;
@end

@implementation TSCHChartTypePieFamily

- (id)animationDeliveryStylesForFilter:(id)filter
{
  filterCopy = filter;
  v9 = objc_msgSend_feature(self, v5, v6, v7, v8);
  v14 = objc_msgSend_animationDeliveryStylesForFilter_(v9, v10, v11, v12, v13, filterCopy);

  return v14;
}

- (BOOL)shouldChangeExplosionWithPreviousChartType:(id)type chartInfo:(id)info seriesList:(id)list
{
  typeCopy = type;
  infoCopy = info;
  listCopy = list;
  v15 = objc_msgSend_containsCalloutLines(infoCopy, v11, v12, v13, v14);
  if (objc_msgSend_intValueForProperty_defaultValue_(infoCopy, v16, v17, v18, v19, 1081, 0) != 1)
  {
    v15 = 0;
  }

  v25 = objc_msgSend_supportsLabelExplosion(self, v20, v21, v22, v23) ^ 1;
  if (typeCopy == self)
  {
    LOBYTE(v25) = 1;
  }

  if ((v25 & 1) != 0 || (objc_msgSend_count(listCopy, v24, v26, v27, v28) == 0) | v15 & 1)
  {
    haveExplosionValue = 0;
  }

  else
  {
    objc_msgSend_defaultPieLabelExplosionPercentage(TSCHStyleUtilities, v29, v30, v31, v32);
    if (objc_msgSend_allSeriesInList_haveExplosionValue_(TSCHStyleUtilities, v36, v35, v37, v38, listCopy))
    {
      haveExplosionValue = 1;
    }

    else
    {
      objc_msgSend_defaultDonutLabelExplosionPercentage(TSCHStyleUtilities, v39, v40, v41, v42);
      haveExplosionValue = objc_msgSend_allSeriesInList_haveExplosionValue_(TSCHStyleUtilities, v44, v43, v45, v46, listCopy);
    }
  }

  return haveExplosionValue;
}

@end