@interface SUUIStatefulErrorToken
+ (id)bodyTokenWithType:(int64_t)a3 parameters:(id)a4;
+ (id)headingTokenWithType:(int64_t)a3 parameters:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (int64_t)body;
- (int64_t)heading;
- (unint64_t)hash;
@end

@implementation SUUIStatefulErrorToken

+ (id)headingTokenWithType:(int64_t)a3 parameters:(id)a4
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8 = objc_alloc_init(v12);
  v8[1] = v10;
  v8[2] = 0;
  v4 = [location copy];
  v5 = v8[3];
  v8[3] = v4;
  MEMORY[0x277D82BD8](v5);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

+ (id)bodyTokenWithType:(int64_t)a3 parameters:(id)a4
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8 = objc_alloc_init(v12);
  v8[1] = v10;
  v8[2] = 1;
  v4 = [location copy];
  v5 = v8[3];
  v8[3] = v4;
  MEMORY[0x277D82BD8](v5);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);

  return v7;
}

- (int64_t)heading
{
  if ([(SUUIStatefulErrorToken *)self type])
  {
    _suui_precondition_failure_with_format(@"Attempting to access heading value for body token");
  }

  return self->_value._heading;
}

- (int64_t)body
{
  if ([(SUUIStatefulErrorToken *)self type]!= 1)
  {
    _suui_precondition_failure_with_format(@"Attempting to access body value for heading token");
  }

  return self->_value._heading;
}

- (BOOL)isEqual:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v18 != location[0])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = 0;
      v16 = 1;
      goto LABEL_23;
    }

    v15 = MEMORY[0x277D82BE0](location[0]);
    v10 = [(SUUIStatefulErrorToken *)v18 type];
    if (v10 != [v15 type])
    {
      v19 = 0;
      v16 = 1;
LABEL_22:
      objc_storeStrong(&v15, 0);
      goto LABEL_23;
    }

    v9 = [(SUUIStatefulErrorToken *)v18 type];
    if (v9)
    {
      if (v9 == 1)
      {
        v7 = [(SUUIStatefulErrorToken *)v18 body];
        if (v7 != [v15 body])
        {
          v19 = 0;
          v16 = 1;
          goto LABEL_22;
        }
      }
    }

    else
    {
      v8 = [(SUUIStatefulErrorToken *)v18 heading];
      if (v8 != [v15 heading])
      {
        v19 = 0;
        v16 = 1;
        goto LABEL_22;
      }
    }

    v4 = [(SUUIStatefulErrorToken *)v18 formatParameters];
    v5 = [v15 formatParameters];
    v13 = 0;
    v11 = 0;
    v6 = 1;
    if (v4 != v5)
    {
      v14 = [(SUUIStatefulErrorToken *)v18 formatParameters];
      v13 = 1;
      v12 = [v15 formatParameters];
      v11 = 1;
      v6 = [(NSDictionary *)v14 isEqualToDictionary:?];
    }

    v19 = v6 & 1;
    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v4);
    v16 = 1;
    goto LABEL_22;
  }

  v19 = 1;
  v16 = 1;
LABEL_23:
  objc_storeStrong(location, 0);
  return v19 & 1;
}

- (unint64_t)hash
{
  v7 = 0;
  v6 = [(SUUIStatefulErrorToken *)self type];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [(SUUIStatefulErrorToken *)self body];
    }
  }

  else
  {
    v7 = [(SUUIStatefulErrorToken *)self heading];
  }

  v3 = [(SUUIStatefulErrorToken *)self type]^ v7;
  v4 = [(SUUIStatefulErrorToken *)self formatParameters];
  v5 = v3 ^ [(NSDictionary *)v4 hash];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (id)description
{
  v19[3] = *MEMORY[0x277D85DE8];
  v18[0] = @"type";
  v2 = @"Heading";
  if (self->_type)
  {
    v2 = @"Body";
  }

  v19[0] = v2;
  v18[1] = @"value";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_value._heading];
  v19[1] = v11;
  v18[2] = @"parameters";
  formatParameters = self->_formatParameters;
  location = 0;
  objc_storeStrong(&location, formatParameters);
  v14 = 0;
  if (location)
  {
    v4 = MEMORY[0x277D82BE0](location);
  }

  else
  {
    v15 = [MEMORY[0x277CBEB68] null];
    v14 = 1;
    v4 = MEMORY[0x277D82BE0](v15);
  }

  v17 = v4;
  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  objc_storeStrong(&location, 0);
  v7 = v17;
  v5 = v17;
  v10 = v7;
  v19[2] = v10;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v9 = [SUUIObjectDescriptionFormatter descriptionForObject:self properties:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  *MEMORY[0x277D85DE8];

  return v9;
}

@end