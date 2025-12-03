@interface WFDataConfigurationParametersDataSource
- (WFDataConfigurationParametersDataSource)initWithTableView:(id)view cellProvider:(id)provider;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)applyParametersFromAction:(id)action animatingDifferences:(BOOL)differences hiddenParameterKeys:(id)keys completion:(id)completion;
@end

@implementation WFDataConfigurationParametersDataSource

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  snapshot = [(WFDataConfigurationParametersDataSource *)self snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  if ([sectionIdentifiers count] <= section)
  {

    sectionFooter = 0;
  }

  else
  {
    showsParameterDescription = [(WFDataConfigurationParametersDataSource *)self showsParameterDescription];

    if ((showsParameterDescription & 1) == 0)
    {
      sectionFooter = 0;
      goto LABEL_12;
    }

    snapshot2 = [(WFDataConfigurationParametersDataSource *)self snapshot];
    sectionIdentifiers2 = [snapshot2 sectionIdentifiers];
    v11 = [sectionIdentifiers2 objectAtIndexedSubscript:section];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    snapshot = v12;

    sectionFooter = [snapshot sectionFooter];
  }

LABEL_12:

  return sectionFooter;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  snapshot = [(WFDataConfigurationParametersDataSource *)self snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v8 = [sectionIdentifiers count];

  if (v8 <= section)
  {
    sectionTitle = 0;
  }

  else
  {
    snapshot2 = [(WFDataConfigurationParametersDataSource *)self snapshot];
    sectionIdentifiers2 = [snapshot2 sectionIdentifiers];
    v11 = [sectionIdentifiers2 objectAtIndexedSubscript:section];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = v12;

    sectionTitle = [v14 sectionTitle];
  }

  return sectionTitle;
}

- (void)applyParametersFromAction:(id)action animatingDifferences:(BOOL)differences hiddenParameterKeys:(id)keys completion:(id)completion
{
  differencesCopy = differences;
  actionCopy = action;
  keysCopy = keys;
  v36 = actionCopy;
  completionCopy = completion;
  configurableParameters = [actionCopy configurableParameters];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10001BD90;
  v56[3] = &unk_10002DD08;
  v12 = keysCopy;
  v57 = v12;
  v13 = [configurableParameters if_objectsPassingTest:v56];

  if ([v13 count])
  {
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10001BDD8;
    v54[3] = &unk_10002DD30;
    v54[4] = self;
    v14 = [v13 indexesOfObjectsWithOptions:1 passingTest:v54];
    v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    if ([v14 count])
    {
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10001BE60;
      v41[3] = &unk_10002DD58;
      v44 = &v50;
      v16 = v13;
      v42 = v16;
      v45 = &v46;
      v17 = v15;
      v43 = v17;
      [v14 enumerateIndexesUsingBlock:v41];
      v18 = v51[3];
      if (v18 < [v16 count])
      {
        v19 = v51[3];
        v20 = [v16 count];
        v21 = [NSIndexSet indexSetWithIndexesInRange:v19, &v20[-v51[3]]];
        v22 = [v16 objectsAtIndexes:v21];
        v23 = [WFDataConfigurationParametersSection alloc];
        ++v47[3];
        v24 = [(WFDataConfigurationParametersSection *)v23 initWithParameters:v22 sectionIndex:?];
        [v17 addObject:v24];
      }

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&v50, 8);
    }

    else
    {
      v26 = [[WFDataConfigurationParametersSection alloc] initWithParameters:v13 sectionIndex:0];
      [v15 addObject:v26];
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10001BFD4;
    v39[3] = &unk_10002DD80;
    v27 = objc_alloc_init(NSDiffableDataSourceSnapshot);
    v40 = v27;
    [v15 enumerateObjectsUsingBlock:v39];
    footerButtons = [(WFDataConfigurationParametersDataSource *)self footerButtons];
    if ([footerButtons count])
    {
      v29 = [[WFDataConfigurationButtonsSection alloc] initWithButtons:footerButtons];
      v58 = v29;
      v30 = [NSArray arrayWithObjects:&v58 count:1];
      [v27 appendSectionsWithIdentifiers:v30];

      buttons = [(WFDataConfigurationButtonsSection *)v29 buttons];
      v32 = [buttons if_map:&stru_10002DDC0];
      [v27 appendItemsWithIdentifiers:v32];
    }

    snapshot = [(WFDataConfigurationParametersDataSource *)self snapshot];
    v34 = [snapshot isEqual:v27];

    if ((v34 & 1) == 0)
    {
      v38.receiver = self;
      v38.super_class = WFDataConfigurationParametersDataSource;
      [(WFDataConfigurationParametersDataSource *)&v38 applySnapshot:v27 animatingDifferences:differencesCopy completion:completionCopy];
    }
  }

  else
  {
    v25 = objc_alloc_init(NSDiffableDataSourceSnapshot);
    v55.receiver = self;
    v55.super_class = WFDataConfigurationParametersDataSource;
    [(WFDataConfigurationParametersDataSource *)&v55 applySnapshot:v25 animatingDifferences:differencesCopy completion:completionCopy];
  }
}

- (WFDataConfigurationParametersDataSource)initWithTableView:(id)view cellProvider:(id)provider
{
  v8.receiver = self;
  v8.super_class = WFDataConfigurationParametersDataSource;
  v4 = [(WFDataConfigurationParametersDataSource *)&v8 initWithTableView:view cellProvider:provider];
  v5 = v4;
  if (v4)
  {
    [(WFDataConfigurationParametersDataSource *)v4 setDefaultRowAnimation:0];
    v6 = v5;
  }

  return v5;
}

@end