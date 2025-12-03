@interface SXBorder
- (BOOL)isSolid;
- (BOOL)shouldBeDotted;
- (id)defaultStrokeStyle;
@end

@implementation SXBorder

- (id)defaultStrokeStyle
{
  v3 = [(SXBorder *)self all];

  if (v3)
  {
    left2 = [(SXBorder *)self all];
  }

  else
  {
    left = [(SXBorder *)self left];

    if (left)
    {
      left2 = [(SXBorder *)self left];
    }

    else
    {
      right = [(SXBorder *)self right];

      if (right)
      {
        left2 = [(SXBorder *)self right];
      }

      else
      {
        v7 = [(SXBorder *)self top];

        if (v7)
        {
          left2 = [(SXBorder *)self top];
        }

        else
        {
          bottom = [(SXBorder *)self bottom];

          if (bottom)
          {
            left2 = [(SXBorder *)self bottom];
          }

          else
          {
            left2 = 0;
          }
        }
      }
    }
  }

  return left2;
}

- (BOOL)shouldBeDotted
{
  v3 = [(SXBorder *)self all];
  if ([v3 style] == 3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SXBorder *)self top];
    if ([v5 style] == 3)
    {
      v4 = 1;
    }

    else
    {
      bottom = [(SXBorder *)self bottom];
      if ([bottom style] == 3)
      {
        v4 = 1;
      }

      else
      {
        left = [(SXBorder *)self left];
        if ([left style] == 3)
        {
          v4 = 1;
        }

        else
        {
          right = [(SXBorder *)self right];
          v4 = [right style] == 3;
        }
      }
    }
  }

  return v4;
}

- (BOOL)isSolid
{
  v3 = [(SXBorder *)self all];
  if ([v3 style] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SXBorder *)self top];
    if ([v5 style] == 1)
    {
      v4 = 1;
    }

    else
    {
      bottom = [(SXBorder *)self bottom];
      if ([bottom style] == 1)
      {
        v4 = 1;
      }

      else
      {
        left = [(SXBorder *)self left];
        if ([left style] == 1)
        {
          v4 = 1;
        }

        else
        {
          right = [(SXBorder *)self right];
          v4 = [right style] == 1;
        }
      }
    }
  }

  return v4;
}

@end