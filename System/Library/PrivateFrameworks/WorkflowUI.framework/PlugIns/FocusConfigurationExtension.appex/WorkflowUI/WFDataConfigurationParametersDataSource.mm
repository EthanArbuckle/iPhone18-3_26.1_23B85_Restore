@interface WFDataConfigurationParametersDataSource
- (WFDataConfigurationParametersDataSource)initWithTableView:(id)a3 cellProvider:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)applyParametersFromAction:(id)a3 animatingDifferences:(BOOL)a4 hiddenParameterKeys:(id)a5 completion:(id)a6;
@end

@implementation WFDataConfigurationParametersDataSource

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(WFDataConfigurationParametersDataSource *)self snapshot];
  v7 = [v6 sectionIdentifiers];
  if ([v7 count] <= a4)
  {

    v13 = 0;
  }

  else
  {
    v8 = [(WFDataConfigurationParametersDataSource *)self showsParameterDescription];

    if ((v8 & 1) == 0)
    {
      v13 = 0;
      goto LABEL_12;
    }

    v9 = [(WFDataConfigurationParametersDataSource *)self snapshot];
    v10 = [v9 sectionIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:a4];

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

    v6 = v12;

    v13 = [v6 sectionFooter];
  }

LABEL_12:

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(WFDataConfigurationParametersDataSource *)self snapshot];
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v13 = 0;
  }

  else
  {
    v9 = [(WFDataConfigurationParametersDataSource *)self snapshot];
    v10 = [v9 sectionIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:a4];

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

    v13 = [v14 sectionTitle];
  }

  return v13;
}

- (void)applyParametersFromAction:(id)a3 animatingDifferences:(BOOL)a4 hiddenParameterKeys:(id)a5 completion:(id)a6
{
  v35 = a4;
  v9 = a3;
  v10 = a5;
  v36 = v9;
  v37 = a6;
  v11 = [v9 configurableParameters];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10001BD90;
  v56[3] = &unk_10002DD08;
  v12 = v10;
  v57 = v12;
  v13 = [v11 if_objectsPassingTest:v56];

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
    v28 = [(WFDataConfigurationParametersDataSource *)self footerButtons];
    if ([v28 count])
    {
      v29 = [[WFDataConfigurationButtonsSection alloc] initWithButtons:v28];
      v58 = v29;
      v30 = [NSArray arrayWithObjects:&v58 count:1];
      [v27 appendSectionsWithIdentifiers:v30];

      v31 = [(WFDataConfigurationButtonsSection *)v29 buttons];
      v32 = [v31 if_map:&stru_10002DDC0];
      [v27 appendItemsWithIdentifiers:v32];
    }

    v33 = [(WFDataConfigurationParametersDataSource *)self snapshot];
    v34 = [v33 isEqual:v27];

    if ((v34 & 1) == 0)
    {
      v38.receiver = self;
      v38.super_class = WFDataConfigurationParametersDataSource;
      [(WFDataConfigurationParametersDataSource *)&v38 applySnapshot:v27 animatingDifferences:v35 completion:v37];
    }
  }

  else
  {
    v25 = objc_alloc_init(NSDiffableDataSourceSnapshot);
    v55.receiver = self;
    v55.super_class = WFDataConfigurationParametersDataSource;
    [(WFDataConfigurationParametersDataSource *)&v55 applySnapshot:v25 animatingDifferences:v35 completion:v37];
  }
}

- (WFDataConfigurationParametersDataSource)initWithTableView:(id)a3 cellProvider:(id)a4
{
  v8.receiver = self;
  v8.super_class = WFDataConfigurationParametersDataSource;
  v4 = [(WFDataConfigurationParametersDataSource *)&v8 initWithTableView:a3 cellProvider:a4];
  v5 = v4;
  if (v4)
  {
    [(WFDataConfigurationParametersDataSource *)v4 setDefaultRowAnimation:0];
    v6 = v5;
  }

  return v5;
}

@end