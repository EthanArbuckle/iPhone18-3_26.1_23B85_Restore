@interface PKPassTileView_State
+ (uint64_t)visuallyCompareTile:(void *)a3 toTile:;
@end

@implementation PKPassTileView_State

+ (uint64_t)visuallyCompareTile:(void *)a3 toTile:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4 == v5)
  {
    v6 = 2;
  }

  else if ((v4 == 0) != (v5 == 0))
  {
    v6 = 0;
  }

  else
  {
    v7 = [v4 metadata];
    v8 = [v5 metadata];
    v9 = v8;
    if (v7 != v8 && ((v7 != 0) != (v8 != 0) || v7 && v8 && ((v10 = [v7 isSelectable], v10 != objc_msgSend(v9, "isSelectable")) || (objc_msgSend(v7, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = PKEqualObjects(), v12, v11, !v13))))
    {
      v6 = 0;
    }

    else
    {
      v14 = [v4 stateIdentifier];
      v15 = [v5 stateIdentifier];
      if (PKEqualObjects())
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

@end