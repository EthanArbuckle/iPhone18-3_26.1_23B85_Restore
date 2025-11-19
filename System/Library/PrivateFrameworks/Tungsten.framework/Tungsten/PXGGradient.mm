@interface PXGGradient
- (BOOL)isEqual:(id)a3;
- (PXGGradient)init;
- (PXGGradient)initWithStartingColor:(id)a3 endingColor:(id)a4 direction:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXGGradient

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p startingColor = %@; endingColor = %@; direction = %ld>", v5, self, self->_startingColor, self->_endingColor, self->_direction];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXGGradient *)self startingColor];
      v7 = [(PXGGradient *)v5 startingColor];
      if ([v6 isEqual:v7])
      {
        v8 = [(PXGGradient *)self endingColor];
        v9 = [(PXGGradient *)v5 endingColor];
        if ([v8 isEqual:v9])
        {
          v10 = [(PXGGradient *)self direction];
          v11 = v10 == [(PXGGradient *)v5 direction];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(PXGGradient *)self startingColor];
  v4 = [v3 hash];
  v5 = [(PXGGradient *)self endingColor];
  v6 = v4 ^ (2 * [v5 hash]);

  return v6;
}

- (PXGGradient)initWithStartingColor:(id)a3 endingColor:(id)a4 direction:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PXGGradient;
  v11 = [(PXGGradient *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startingColor, a3);
    objc_storeStrong(&v12->_endingColor, a4);
    v12->_direction = a5;
  }

  return v12;
}

- (PXGGradient)init
{
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [(PXGGradient *)self initWithStartingColor:v3 endingColor:v4 direction:0];

  return v5;
}

@end