@interface _UIMainMenuBaseMenuResponse
- (BOOL)isEqual:(id)a3;
- (_UIMainMenuBaseMenuResponse)initWithCoder:(id)a3;
- (id)_initWithMenu:(id)a3 clientName:(id)a4 sessionResponse:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuBaseMenuResponse

- (id)_initWithMenu:(id)a3 clientName:(id)a4 sessionResponse:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _UIMainMenuBaseMenuResponse;
  v12 = [(_UIMainMenuBaseMenuResponse *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_menu, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (void)encodeWithCoder:(id)a3
{
  menu = self->_menu;
  v5 = a3;
  [v5 encodeObject:menu forKey:@"Menu"];
  [v5 encodeObject:self->_clientName forKey:@"ClientName"];
  [v5 encodeObject:self->_sessionResponse forKey:@"SessionResponse"];
}

- (_UIMainMenuBaseMenuResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuBaseMenuResponse *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"Menu"];
    menu = v5->_menu;
    v5->_menu = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"ClientName"];
    clientName = v5->_clientName;
    v5->_clientName = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"SessionResponse"];
    sessionResponse = v5->_sessionResponse;
    v5->_sessionResponse = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      menu = v7->_menu;
      v9 = self->_menu;
      v10 = menu;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        if (!v9 || !v10)
        {
          goto LABEL_22;
        }

        v12 = [(_UIMainMenu *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_23;
        }
      }

      clientName = v7->_clientName;
      v9 = self->_clientName;
      v14 = clientName;
      v11 = v14;
      if (v9 == v14)
      {

LABEL_17:
        sessionResponse = self->_sessionResponse;
        v16 = v7->_sessionResponse;
        v9 = sessionResponse;
        v17 = v16;
        v11 = v17;
        if (v9 == v17)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v17)
          {
            LOBYTE(v12) = [(_UIMainMenu *)v9 isEqual:v17];
          }
        }

        goto LABEL_22;
      }

      LOBYTE(v12) = 0;
      if (v9 && v14)
      {
        v12 = [(_UIMainMenu *)v9 isEqual:v14];

        if (!v12)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    LOBYTE(v12) = 0;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_UIMainMenu *)self->_menu hash];
  v4 = [(NSString *)self->_clientName hash]^ v3;
  return v4 ^ [(_UIMainMenuSessionResponse *)self->_sessionResponse hash];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_menu withName:@"menu" skipIfNil:1];
  [v3 appendString:self->_clientName withName:@"clientName" skipIfEmpty:1];
  v5 = [v3 appendObject:self->_sessionResponse withName:@"sessionResponse" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

@end