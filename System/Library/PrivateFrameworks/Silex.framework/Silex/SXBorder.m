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
    v4 = [(SXBorder *)self all];
  }

  else
  {
    v5 = [(SXBorder *)self left];

    if (v5)
    {
      v4 = [(SXBorder *)self left];
    }

    else
    {
      v6 = [(SXBorder *)self right];

      if (v6)
      {
        v4 = [(SXBorder *)self right];
      }

      else
      {
        v7 = [(SXBorder *)self top];

        if (v7)
        {
          v4 = [(SXBorder *)self top];
        }

        else
        {
          v8 = [(SXBorder *)self bottom];

          if (v8)
          {
            v4 = [(SXBorder *)self bottom];
          }

          else
          {
            v4 = 0;
          }
        }
      }
    }
  }

  return v4;
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
      v6 = [(SXBorder *)self bottom];
      if ([v6 style] == 3)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(SXBorder *)self left];
        if ([v7 style] == 3)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(SXBorder *)self right];
          v4 = [v8 style] == 3;
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
      v6 = [(SXBorder *)self bottom];
      if ([v6 style] == 1)
      {
        v4 = 1;
      }

      else
      {
        v7 = [(SXBorder *)self left];
        if ([v7 style] == 1)
        {
          v4 = 1;
        }

        else
        {
          v8 = [(SXBorder *)self right];
          v4 = [v8 style] == 1;
        }
      }
    }
  }

  return v4;
}

@end