@interface _PLDescriptionStyle
+ (id)styleForEnum:(int64_t)a3;
- (_PLDescriptionStyle)initWithIntialFieldSeparator:(id)a3 fieldSeparator:(id)a4 nameValueSeparator:(id)a5 suffix:(id)a6 extraIndent:(int64_t)a7 prettyPrint:(BOOL)a8;
- (id)descriptionForObject:(id)a3 withIndent:(int64_t)a4;
@end

@implementation _PLDescriptionStyle

- (id)descriptionForObject:(id)a3 withIndent:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_prettyPrint)
  {
    v8 = [v6 _pl_prettyDescriptionWithIndent:a4];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v7 descriptionWithLocale:0 indent:a4 - 1];
      v11 = [v9 stringWithFormat:@"\n%@", v10];

      goto LABEL_7;
    }

    v8 = [v7 description];
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (_PLDescriptionStyle)initWithIntialFieldSeparator:(id)a3 fieldSeparator:(id)a4 nameValueSeparator:(id)a5 suffix:(id)a6 extraIndent:(int64_t)a7 prettyPrint:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v29.receiver = self;
  v29.super_class = _PLDescriptionStyle;
  v18 = [(_PLDescriptionStyle *)&v29 init];
  if (v18)
  {
    v19 = [v14 copy];
    initialFieldSeparator = v18->_initialFieldSeparator;
    v18->_initialFieldSeparator = v19;

    v21 = [v15 copy];
    fieldSeparator = v18->_fieldSeparator;
    v18->_fieldSeparator = v21;

    v23 = [v16 copy];
    nameValueSeparator = v18->_nameValueSeparator;
    v18->_nameValueSeparator = v23;

    v25 = [v17 copy];
    suffix = v18->_suffix;
    v18->_suffix = v25;

    v18->_extraIndent = a7;
    v18->_prettyPrint = a8;
    v27 = v18;
  }

  return v18;
}

+ (id)styleForEnum:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      pl_dispatch_once();
      v3 = &styleForEnum__pl_once_object_19;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_11;
      }

      pl_dispatch_once();
      v3 = &styleForEnum__pl_once_object_20;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_11;
    }

    pl_dispatch_once();
    v3 = &styleForEnum__pl_once_object_18;
  }

  else
  {
    pl_dispatch_once();
    v3 = &styleForEnum__pl_once_object_17;
  }

  a1 = *v3;
LABEL_11:

  return a1;
}

@end