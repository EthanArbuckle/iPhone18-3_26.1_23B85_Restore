@interface SUPageSectionGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)loadFromDictionary:(id)a3;
- (SUPageSectionGroup)initWithSectionsDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_sectionStyleForString:(id)a3;
- (void)dealloc;
@end

@implementation SUPageSectionGroup

- (SUPageSectionGroup)initWithSectionsDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUPageSectionGroup;
  v4 = [(SUPageSectionGroup *)&v7 init];
  v5 = v4;
  if (v4 && ![(SUPageSectionGroup *)v4 loadFromDictionary:a3])
  {

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  self->_sections = 0;

  self->_tintColor = 0;
  v3.receiver = self;
  v3.super_class = SUPageSectionGroup;
  [(SUPageSectionGroup *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = self->_defaultSectionIndex;
  v5[2] = [(NSArray *)self->_sections copyWithZone:a3];
  v5[3] = self->_style;
  v5[4] = [(UIColor *)self->_tintColor copyWithZone:a3];
  v5[5] = self->_tintStyle;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[SUPageSectionGroup style](self, "style"), v5 == [a3 style]))
  {
    v6 = [(SUPageSectionGroup *)self sections];
    v7 = [a3 sections];
    v8 = [(NSArray *)v6 count];
    LOBYTE(v9) = v8 == [v7 count];
    if (v9 && v8 >= 1)
    {
      v10 = 1;
      do
      {
        v9 = [-[NSArray objectAtIndex:](v6 objectAtIndex:{v10 - 1), "isEqual:", objc_msgSend(v7, "objectAtIndex:", v10 - 1)}];
        if (!v9)
        {
          break;
        }
      }

      while (v10++ < v8);
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (BOOL)loadFromDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E69D4990]) initWithDictionary:a3];
  v5 = [v4 dictionaryByEvaluatingConditions];

  [(SUPageSectionGroup *)self setDefaultSectionIndex:0];
  -[SUPageSectionGroup setStyle:](self, "setStyle:", -[SUPageSectionGroup _sectionStyleForString:](self, "_sectionStyleForString:", [v5 objectForKey:@"type"]));
  v6 = [v5 objectForKey:@"tint-color"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = SUCreateColorFromStyleString(v6);
    if (v7)
    {
      v8 = v7;
      -[SUPageSectionGroup setTintColor:](self, "setTintColor:", [MEMORY[0x1E69DC888] colorWithCGColor:v7]);
      CGColorRelease(v8);
    }
  }

  v9 = [v5 objectForKey:@"tint-style"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 isEqualToString:@"dark"];
  }

  else
  {
    v10 = 1;
  }

  [(SUPageSectionGroup *)self setTintStyle:v10];
  v11 = [v5 objectForKey:@"tabs"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          v18 = [v17 objectForKey:@"active-tab"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 integerValue] >= 1)
          {
            -[SUPageSectionGroup setDefaultSectionIndex:](self, "setDefaultSectionIndex:", [v12 count]);
          }

          v19 = objc_alloc_init(SUPageSection);
          if ([(SUPageSection *)v19 loadFromDictionary:v17])
          {
            [v12 addObject:v19];
          }
        }

        v14 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    [(SUPageSectionGroup *)self setSections:v12];
  }

  return [(NSArray *)[(SUPageSectionGroup *)self sections] count]!= 0;
}

- (int64_t)_sectionStyleForString:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [a3 isEqualToString:@"body"];
  }

  else
  {
    return 0;
  }
}

@end