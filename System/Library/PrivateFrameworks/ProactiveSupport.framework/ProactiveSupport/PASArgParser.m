@interface PASArgParser
@end

@implementation PASArgParser

uint64_t __63___PASArgParser_simpleParserWithHelpGenerator_version_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 options];
  v5 = [v4 objectForKeyedSubscript:@"help"];

  if (v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = (*(v6 + 16))(v6, v3);
    }

    else
    {
      v13 = [v3 parser];
      v7 = [v13 naiveUsageHelpWithPositionalArgString:0];
    }

    printf("%s", [v7 UTF8String]);

    goto LABEL_9;
  }

  v8 = [v3 options];
  v9 = [v8 objectForKeyedSubscript:@"version"];
  if (!v9)
  {

    goto LABEL_11;
  }

  v10 = *(a1 + 32);

  if (!v10)
  {
LABEL_11:
    v14 = (*(*(a1 + 48) + 16))();
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E696AE30] processInfo];
  v12 = [v11 processName];
  printf("%s %s\n", [v12 UTF8String], objc_msgSend(*(a1 + 32), "UTF8String"));

LABEL_9:
  v14 = 0;
LABEL_12:

  return v14;
}

@end