@interface WBSSameDocumentNavigationToHistoryVisitCorrelator
- (WBSSameDocumentNavigationToHistoryVisitCorrelator)init;
- (id)visitForSameDocumentNavigationToURL:(id)a3;
- (void)noteVisit:(id)a3;
@end

@implementation WBSSameDocumentNavigationToHistoryVisitCorrelator

- (WBSSameDocumentNavigationToHistoryVisitCorrelator)init
{
  v7.receiver = self;
  v7.super_class = WBSSameDocumentNavigationToHistoryVisitCorrelator;
  v2 = [(WBSSameDocumentNavigationToHistoryVisitCorrelator *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    visits = v2->_visits;
    v2->_visits = v3;

    v5 = v2;
  }

  return v2;
}

- (void)noteVisit:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([(NSMutableArray *)self->_visits count]>= 5)
    {
      [(NSMutableArray *)self->_visits removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_visits addObject:v5];
    v4 = v5;
  }
}

- (id)visitForSameDocumentNavigationToURL:(id)a3
{
  v4 = a3;
  visits = self->_visits;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__WBSSameDocumentNavigationToHistoryVisitCorrelator_visitForSameDocumentNavigationToURL___block_invoke;
  v11[3] = &unk_1E7FCA5F8;
  v6 = v4;
  v12 = v6;
  v7 = [(NSMutableArray *)visits indexOfObjectPassingTest:v11];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = [(NSMutableArray *)self->_visits objectAtIndexedSubscript:v7];
    [(NSMutableArray *)self->_visits removeObjectsInRange:0, v9 + 1];
  }

  return v8;
}

uint64_t __89__WBSSameDocumentNavigationToHistoryVisitCorrelator_visitForSameDocumentNavigationToURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [v3 url];
  v5 = [v4 isEqual:*(a1 + 32)];

  return v5;
}

@end