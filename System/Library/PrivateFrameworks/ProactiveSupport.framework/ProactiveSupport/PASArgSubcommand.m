@interface PASArgSubcommand
@end

@implementation PASArgSubcommand

uint64_t __73___PASArgSubcommand_simpleSubcommandWithHelpGenerator_name_help_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 options];
  v5 = [v4 objectForKeyedSubscript:@"help"];

  if (v5)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = (*(v6 + 16))(v6, v3);
    }

    else
    {
      v9 = [v3 subcommand];
      v7 = [v9 naiveUsageHelpWithPositionalArgString:0];
    }

    printf("%s", [v7 UTF8String]);

    v8 = 0;
  }

  else
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  return v8;
}

@end