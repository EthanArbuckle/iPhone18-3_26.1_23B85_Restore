@interface SPParsecResultsDatastore
- (id)performQuery:(id)a3;
@end

@implementation SPParsecResultsDatastore

- (id)performQuery:(id)a3
{
  v4 = a3;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v21 = *v5;
  v22 = v6;
  v23 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  v10 = *(v5 + 24);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPParsecResultsDatastore performQuery:]";
  si_tracing_log_span_begin();
  v20.receiver = self;
  v20.super_class = SPParsecResultsDatastore;
  v11 = [(SPParsecDatastore *)&v20 performQuery:v4];
  v12 = *v5;
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  v15 = *(v5 + 24);
  v16 = *(v5 + 28);
  v17 = *(v5 + 32);
  si_tracing_log_span_end();
  v18 = v22;
  *v5 = v21;
  *(v5 + 16) = v18;
  *(v5 + 32) = v23;

  return v11;
}

@end