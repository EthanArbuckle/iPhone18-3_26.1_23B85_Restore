@interface SPDictionaryDatastore
- (SPDictionaryDatastore)init;
- (id)performQuery:(id)query;
@end

@implementation SPDictionaryDatastore

- (SPDictionaryDatastore)init
{
  v6.receiver = self;
  v6.super_class = SPDictionaryDatastore;
  v2 = [(SPDictionaryDatastore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SPDictionaryDatastore.activation", 0);
    activationQueue = v2->_activationQueue;
    v2->_activationQueue = v3;
  }

  return v2;
}

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v22 = *v5;
  v23 = v6;
  v24 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPDictionaryDatastore performQuery:]";
  si_tracing_log_span_begin();
  if ([queryCopy isPeopleSearch] & 1) != 0 || (objc_msgSend(queryCopy, "isScopedAppSearch"))
  {
    v11 = 0;
  }

  else
  {
    v12 = SPLogForSPLogCategoryQuery();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#query dictionary start", v21, 2u);
    }

    v11 = [[SPDictionaryDatastoreToken alloc] initWithStore:self];
    [(SPDictionaryDatastoreToken *)v11 begin:queryCopy];
  }

  v13 = *v5;
  v14 = *(v5 + 8);
  v15 = *(v5 + 16);
  v16 = *(v5 + 24);
  v17 = *(v5 + 28);
  v18 = *(v5 + 32);
  si_tracing_log_span_end();
  v19 = v23;
  *v5 = v22;
  *(v5 + 16) = v19;
  *(v5 + 32) = v24;

  return v11;
}

@end