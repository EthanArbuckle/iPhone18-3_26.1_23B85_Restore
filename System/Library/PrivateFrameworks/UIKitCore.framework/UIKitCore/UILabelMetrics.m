@interface UILabelMetrics
@end

@implementation UILabelMetrics

uint64_t __37___UILabelMetrics__calculateIfNeeded__block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 32) + 64);
  v3 = 0;
  v4 = 0;
  if (*(result + 64) == 1)
  {
    if (v2)
    {
      result = [*(*(result + 32) + 64) _calculateIfNecessary];
      v4 = *(v2 + 56);
    }

    *(*(v1[5] + 8) + 24) = v4;
    v5 = v1[4];
    v6 = *(v5 + 64);
    if (v6)
    {
      result = [*(v5 + 64) _calculateIfNecessary];
      v3 = *(v6 + 56);
    }

    *(*(v1[6] + 8) + 24) = v3;
    v7 = v1[4];
    v8 = *(v7 + 64);
    if (!v8)
    {
      v12 = 0;
      goto LABEL_14;
    }

    result = [*(v7 + 64) _calculateIfNecessary];
    v9 = (v8 + 104);
  }

  else
  {
    if (v2)
    {
      result = [*(*(result + 32) + 64) _calculateIfNecessary];
      v4 = *(v2 + 48);
    }

    *(*(v1[5] + 8) + 24) = v4;
    v10 = v1[4];
    v11 = *(v10 + 64);
    if (v11)
    {
      result = [*(v10 + 64) _calculateIfNecessary];
      v3 = *(v11 + 56);
    }

    *(*(v1[6] + 8) + 24) = v3;
    v9 = (*(v1[5] + 8) + 24);
  }

  v12 = *v9;
LABEL_14:
  *(*(v1[7] + 8) + 24) = v12;
  return result;
}

uint64_t __37___UILabelMetrics__calculateIfNeeded__block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  v3 = *(*(a1 + 32) + 64);
  if (v3)
  {
    if (*(a1 + 64))
    {
      v4 = 32;
    }

    else
    {
      v4 = 96;
    }

    if (*(a1 + 64))
    {
      v5 = 24;
    }

    else
    {
      v5 = 88;
    }

    result = [v3 _calculateIfNecessary];
    v6 = *&v3[v5];
    v7 = *&v3[v4];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = *(*(a1 + 48) + 8);
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = *(a1 + 32);
  v10 = *(v9 + 64);
  if (v10)
  {
    result = [*(v9 + 64) _calculateIfNecessary];
    v11 = *(v10 + 72);
    v9 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
  }

  *(v9 + 184) = v11;
  v12 = *(*(*(a1 + 56) + 8) + 24);
  if (v12 >= 1)
  {
    v13 = *(a1 + 32);
    if (*(v13 + 184) < v12)
    {
      v12 = *(v13 + 184);
    }

    *(v13 + 184) = v12;
  }

  return result;
}

@end