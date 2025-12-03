@interface PKPassTileView_State
+ (uint64_t)visuallyCompareTile:(void *)tile toTile:;
@end

@implementation PKPassTileView_State

+ (uint64_t)visuallyCompareTile:(void *)tile toTile:
{
  v4 = a2;
  tileCopy = tile;
  objc_opt_self();
  if (v4 == tileCopy)
  {
    v6 = 2;
  }

  else if ((v4 == 0) != (tileCopy == 0))
  {
    v6 = 0;
  }

  else
  {
    metadata = [v4 metadata];
    metadata2 = [tileCopy metadata];
    v9 = metadata2;
    if (metadata != metadata2 && ((metadata != 0) != (metadata2 != 0) || metadata && metadata2 && ((v10 = [metadata isSelectable], v10 != objc_msgSend(v9, "isSelectable")) || (objc_msgSend(metadata, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v12 = objc_claimAutoreleasedReturnValue(), v13 = PKEqualObjects(), v12, v11, !v13))))
    {
      v6 = 0;
    }

    else
    {
      stateIdentifier = [v4 stateIdentifier];
      stateIdentifier2 = [tileCopy stateIdentifier];
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