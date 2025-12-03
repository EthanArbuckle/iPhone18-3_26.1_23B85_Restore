@interface _PLDescriptionStyle
+ (id)styleForEnum:(int64_t)enum;
- (_PLDescriptionStyle)initWithIntialFieldSeparator:(id)separator fieldSeparator:(id)fieldSeparator nameValueSeparator:(id)valueSeparator suffix:(id)suffix extraIndent:(int64_t)indent prettyPrint:(BOOL)print;
- (id)descriptionForObject:(id)object withIndent:(int64_t)indent;
@end

@implementation _PLDescriptionStyle

- (id)descriptionForObject:(id)object withIndent:(int64_t)indent
{
  objectCopy = object;
  v7 = objectCopy;
  if (self->_prettyPrint)
  {
    v8 = [objectCopy _pl_prettyDescriptionWithIndent:indent];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v7 descriptionWithLocale:0 indent:indent - 1];
      v11 = [v9 stringWithFormat:@"\n%@", v10];

      goto LABEL_7;
    }

    v8 = [v7 description];
  }

  v11 = v8;
LABEL_7:

  return v11;
}

- (_PLDescriptionStyle)initWithIntialFieldSeparator:(id)separator fieldSeparator:(id)fieldSeparator nameValueSeparator:(id)valueSeparator suffix:(id)suffix extraIndent:(int64_t)indent prettyPrint:(BOOL)print
{
  separatorCopy = separator;
  fieldSeparatorCopy = fieldSeparator;
  valueSeparatorCopy = valueSeparator;
  suffixCopy = suffix;
  v29.receiver = self;
  v29.super_class = _PLDescriptionStyle;
  v18 = [(_PLDescriptionStyle *)&v29 init];
  if (v18)
  {
    v19 = [separatorCopy copy];
    initialFieldSeparator = v18->_initialFieldSeparator;
    v18->_initialFieldSeparator = v19;

    v21 = [fieldSeparatorCopy copy];
    fieldSeparator = v18->_fieldSeparator;
    v18->_fieldSeparator = v21;

    v23 = [valueSeparatorCopy copy];
    nameValueSeparator = v18->_nameValueSeparator;
    v18->_nameValueSeparator = v23;

    v25 = [suffixCopy copy];
    suffix = v18->_suffix;
    v18->_suffix = v25;

    v18->_extraIndent = indent;
    v18->_prettyPrint = print;
    v27 = v18;
  }

  return v18;
}

+ (id)styleForEnum:(int64_t)enum
{
  if (enum > 1)
  {
    if (enum == 2)
    {
      pl_dispatch_once();
      v3 = &styleForEnum__pl_once_object_19;
    }

    else
    {
      if (enum != 3)
      {
        goto LABEL_11;
      }

      pl_dispatch_once();
      v3 = &styleForEnum__pl_once_object_20;
    }
  }

  else if (enum)
  {
    if (enum != 1)
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

  self = *v3;
LABEL_11:

  return self;
}

@end