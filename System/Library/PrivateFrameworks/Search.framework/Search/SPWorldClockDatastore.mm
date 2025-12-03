@interface SPWorldClockDatastore
- (id)performQuery:(id)query;
@end

@implementation SPWorldClockDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v18 = *v5;
  v19 = *(v5 + 16);
  v20 = *(v5 + 32);
  v6 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v5 + 8);
  v9 = *(v5 + 24);
  *v5 = v6;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v8;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPWorldClockDatastore performQuery:]";
  si_tracing_log_span_begin();
  v10 = [[SPWorldClockDatastoreToken alloc] initWithStore:self];
  [(SPWorldClockDatastoreToken *)v10 begin:queryCopy];
  v11 = *v5;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = *(v5 + 28);
  v16 = *(v5 + 32);
  si_tracing_log_span_end();
  *v5 = v18;
  *(v5 + 16) = v19;
  *(v5 + 32) = v20;

  return v10;
}

@end