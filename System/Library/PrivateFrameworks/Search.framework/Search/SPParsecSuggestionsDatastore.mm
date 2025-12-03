@interface SPParsecSuggestionsDatastore
- (id)performQuery:(id)query;
@end

@implementation SPParsecSuggestionsDatastore

- (id)performQuery:(id)query
{
  queryCopy = query;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v23 = *v5;
  v24 = v6;
  v25 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecSuggestionsDatastore performQuery:]";
  si_tracing_log_span_begin();
  queryContext = [queryCopy queryContext];
  queryKind = [queryContext queryKind];

  if ((queryKind - 1) > 1)
  {
    v13 = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = SPParsecSuggestionsDatastore;
    v13 = [(SPParsecDatastore *)&v22 performQuery:queryCopy];
  }

  v14 = *v5;
  v15 = *(v5 + 8);
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v18 = *(v5 + 28);
  v19 = *(v5 + 32);
  si_tracing_log_span_end();
  v20 = v24;
  *v5 = v23;
  *(v5 + 16) = v20;
  *(v5 + 32) = v25;

  return v13;
}

@end