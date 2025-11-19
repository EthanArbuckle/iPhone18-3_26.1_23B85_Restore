@interface UIIntelligencePrewarmCollection
@end

@implementation UIIntelligencePrewarmCollection

void ___UIIntelligencePrewarmCollection_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _userInterfaceIdiom];
  if (v4)
  {
    if (v4 != 3)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  else
  {
    v5 = 32;
  }

  *(*(*(a1 + v5) + 8) + 24) = 1;
LABEL_6:
  v6 = [v3 _isEmbeddedScreen];

  if (v6)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void ___UIIntelligencePrewarmCollection_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = [MEMORY[0x1E698E520] sharedBacklight];
    [v2 backlightState];
  }

  if (*(a1 + 33) == 1)
  {
    v3 = +[_UICarPlaySession sharedInstance];
    [(_UICarPlaySession *)v3 currentSession];
  }
}

@end