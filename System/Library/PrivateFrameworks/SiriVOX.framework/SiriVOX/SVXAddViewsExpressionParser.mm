@interface SVXAddViewsExpressionParser
@end

@implementation SVXAddViewsExpressionParser

BOOL __98___SVXAddViewsExpressionParser__parseViews_addViews_aceViewByAceId_aceIdByParseableExpressionIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 aceId];
  v4 = [*(a1 + 32) aceId];
  v5 = v3 == v4;

  return v5;
}

void __52___SVXAddViewsExpressionParser_parseAddViews_reply___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) aceViewByAceId];
    v8 = [*(a1 + 48) aceViewIdByExpressionId];
    v9 = [v5 _parseViews:v10 addViews:v6 aceViewByAceId:v7 aceIdByParseableExpressionIds:v8];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

@end