@interface MetricEntryMO
+ (unint64_t)metricEntryCount:(unint64_t)a3 moc:(id)a4;
@end

@implementation MetricEntryMO

+ (unint64_t)metricEntryCount:(unint64_t)a3 moc:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = +[MetricEntryMO entity];
  v7 = [v6 name];
  v8 = [AnalyticsStoreProxy fetchRequestForEntity:v7];

  if (v8)
  {
    [v8 setFetchLimit:a3];
    v15 = 0;
    v9 = [v5 countForFetchRequest:v8 error:&v15];
    v10 = v15;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = +[MetricEntryMO entity];
      [v13 name];
      *buf = 136446722;
      v17 = "+[MetricEntryMO metricEntryCount:moc:]";
      v18 = 1024;
      v19 = 25;
      v21 = v20 = 2112;
      v14 = v21;
      _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_ERROR, "%{public}s::%d:fetch request nil for entity:%@", buf, 0x1Cu);
    }

    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end