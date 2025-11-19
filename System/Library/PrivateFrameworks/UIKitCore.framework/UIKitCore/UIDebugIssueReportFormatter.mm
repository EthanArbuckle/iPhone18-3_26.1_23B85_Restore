@interface UIDebugIssueReportFormatter
@end

@implementation UIDebugIssueReportFormatter

void __54___UIDebugIssueReportFormatter__componentsFromReport___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 prefix];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [*(a1 + 32) defaultIssuePrefix];
  }

  v19 = v8;

  v9 = *(a1 + 40);
  v10 = [v5 description];
  [v9 appendFormat:@"%@%@", v19, v10];

  v11 = [v5 _subissueReport];

  if (v11)
  {
    v12 = [v11 issues];
    v13 = [v12 count];

    if (v13)
    {
      v14 = *(*(*(a1 + 48) + 8) + 40);
      if (!v14)
      {
        v15 = objc_alloc_init(_UIDebugIssueReportFormatter);
        v16 = *(*(a1 + 48) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        [*(*(*(a1 + 48) + 8) + 40) setIndentLevel:1];
        v14 = *(*(*(a1 + 48) + 8) + 40);
      }

      v18 = [v14 stringFromReport:v11];
      [*(a1 + 40) appendFormat:@"\n%@", v18];
    }
  }

  if (*(a1 + 56) - 1 > a3)
  {
    [*(a1 + 40) appendString:@"\n"];
  }
}

@end