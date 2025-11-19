@interface ATAParsedOpenURL
+ (id)_logStringForType:(unint64_t)a3;
+ (id)parsedOpenURLWithURL:(id)a3 andOptions:(id)a4;
- (ATAParsedOpenURL)init;
- (BOOL)isEqual:(id)a3;
- (id)_initWithURL:(id)a3 options:(id)a4 type:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation ATAParsedOpenURL

+ (id)parsedOpenURLWithURL:(id)a3 andOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:v5 resolvingAgainstBaseURL:0];
    v8 = [v7 host];
    if (v8)
    {
      v9 = [[ATAParsedOpenURL alloc] _initWithURL:v5 options:v6 type:0];
      [v9 setTabBarItemIdentifier:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ATAParsedOpenURL)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (id)_initWithURL:(id)a3 options:(id)a4 type:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = ATAParsedOpenURL;
  v10 = [(ATAParsedOpenURL *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    URL = v10->_URL;
    v10->_URL = v11;

    v13 = [v9 copy];
    options = v10->_options;
    v10->_options = v13;

    v10->_type = a5;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ATAParsedOpenURL *)self type];
  v4 = [(ATAParsedOpenURL *)self URL];
  v5 = [v4 hash] ^ v3;

  v6 = [(ATAParsedOpenURL *)self options];
  v7 = [v6 hash];

  v8 = [(ATAParsedOpenURL *)self tabBarItemIdentifier];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(ATAParsedOpenURL *)self type];
        if (v7 != [(ATAParsedOpenURL *)v6 type])
        {
LABEL_17:
          v13 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v8 = [(ATAParsedOpenURL *)self URL];
        v9 = [(ATAParsedOpenURL *)v6 URL];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          v13 = 0;
          if (!v10 || !v11)
          {
            goto LABEL_24;
          }

          v14 = [v10 isEqual:v11];

          if ((v14 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v15 = [(ATAParsedOpenURL *)self options];
        v16 = [(ATAParsedOpenURL *)v6 options];
        v10 = v15;
        v17 = v16;
        v12 = v17;
        if (v10 == v17)
        {

LABEL_19:
          v19 = [(ATAParsedOpenURL *)self tabBarItemIdentifier];
          v20 = [(ATAParsedOpenURL *)v6 tabBarItemIdentifier];
          v10 = v19;
          v21 = v20;
          v12 = v21;
          if (v10 == v21)
          {
            v13 = 1;
          }

          else
          {
            v13 = 0;
            if (v10 && v21)
            {
              v13 = [v10 isEqual:v21];
            }
          }

          goto LABEL_24;
        }

        v13 = 0;
        if (v10 && v17)
        {
          v18 = [v10 isEqual:v17];

          if ((v18 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_19;
        }

LABEL_24:

        goto LABEL_25;
      }
    }

    v13 = 0;
  }

LABEL_26:

  return v13;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21.receiver = self;
  v21.super_class = ATAParsedOpenURL;
  v4 = [(ATAParsedOpenURL *)&v21 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(ATAParsedOpenURL *)self URL];
  v7 = [v5 stringWithFormat:@"%@=%@", @"URL", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(ATAParsedOpenURL *)self options];
  v10 = [v8 stringWithFormat:@"%@=%@", @"options", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [objc_opt_class() _logStringForType:{-[ATAParsedOpenURL type](self, "type")}];
  v13 = [v11 stringWithFormat:@"%@=%@", @"type", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(ATAParsedOpenURL *)self tabBarItemIdentifier];
  v16 = [v14 stringWithFormat:@"%@=%@", @"tabBarItemIdentifier", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v17 stringWithFormat:@"<%@>", v18];

  return v19;
}

+ (id)_logStringForType:(unint64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return @"ATAParsedOpenURLTypeSwitchToTabBarItem";
  }
}

@end