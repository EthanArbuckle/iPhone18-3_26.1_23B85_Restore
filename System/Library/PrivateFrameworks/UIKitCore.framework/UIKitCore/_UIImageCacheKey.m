@interface _UIImageCacheKey
+ (id)keyWithName:(void *)a3 configuration:;
+ (id)keyWithName:(void *)a3 configuration:(void *)a4 bundle:;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _UIImageCacheKey

- (unint64_t)hash
{
  v3 = *&self->_flags & 3;
  v4 = [(NSString *)self->_name hash]^ v3;
  v5 = [(UIImageConfiguration *)self->_configuration hash];
  return v4 ^ v5 ^ [(NSBundle *)self->_bundle hash];
}

+ (id)keyWithName:(void *)a3 configuration:(void *)a4 bundle:
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  objc_opt_self();
  v9 = objc_opt_new();
  v10 = [v8 copy];

  v11 = *(v9 + 8);
  *(v9 + 8) = v10;

  v12 = *(v9 + 16);
  *(v9 + 16) = v6;
  v13 = v6;

  v14 = *(v9 + 24);
  *(v9 + 24) = v7;

  *(v9 + 32) &= 0xFCu;

  return v9;
}

+ (id)keyWithName:(void *)a3 configuration:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_opt_new();
  v7 = [v5 copy];

  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v9 = *(v6 + 16);
  *(v6 + 16) = v4;
  v10 = v4;

  v11 = *(v6 + 24);
  *(v6 + 24) = 0;

  *(v6 + 32) &= 0xFCu;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = v6;
        if (((*&v6->_flags ^ *&self->_flags) & 3) != 0)
        {
          LOBYTE(v8) = 0;
LABEL_26:

          goto LABEL_27;
        }

        name = v6->_name;
        v10 = self->_name;
        v11 = name;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          if (!v10 || !v11)
          {
            goto LABEL_25;
          }

          v8 = [(UIImageConfiguration *)v10 isEqual:v11];

          if (!v8)
          {
            goto LABEL_26;
          }
        }

        configuration = v7->_configuration;
        v10 = self->_configuration;
        v14 = configuration;
        v12 = v14;
        if (v10 == v14)
        {

LABEL_20:
          bundle = self->_bundle;
          v16 = v7->_bundle;
          v10 = bundle;
          v17 = v16;
          v12 = v17;
          if (v10 == v17)
          {
            LOBYTE(v8) = 1;
          }

          else
          {
            LOBYTE(v8) = 0;
            if (v10 && v17)
            {
              LOBYTE(v8) = [(UIImageConfiguration *)v10 isEqual:v17];
            }
          }

          goto LABEL_25;
        }

        LOBYTE(v8) = 0;
        if (v10 && v14)
        {
          v8 = [(UIImageConfiguration *)v10 isEqual:v14];

          if (!v8)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

LABEL_25:

        goto LABEL_26;
      }
    }

    LOBYTE(v8) = 0;
  }

LABEL_27:

  return v8;
}

- (id)description
{
  configuration = self->_configuration;
  if (!configuration)
  {
    configuration = @"nil";
  }

  if (*&self->_flags)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"systemImage(%@, %@)", self->_name, configuration, v6];
  }

  else
  {
    bundle = self->_bundle;
    if (!bundle)
    {
      bundle = @"nil";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"image(%@, %@, %@)", self->_name, configuration, bundle];
  }
  v4 = ;

  return v4;
}

@end