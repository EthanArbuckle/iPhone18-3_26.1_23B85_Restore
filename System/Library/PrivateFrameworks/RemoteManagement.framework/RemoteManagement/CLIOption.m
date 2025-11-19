@interface CLIOption
+ (void)registerOptionWithShortName:(id)a3 longName:(id)a4 parameterCount:(unint64_t)a5 shortDescription:(id)a6 longDescription:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nameSummaryString;
- (unint64_t)hash;
- (void)_finalize;
- (void)register;
- (void)setShortName:(id)a3;
@end

@implementation CLIOption

- (void)_finalize
{
  v3 = [(CLIOption *)self shortName];
  longName = v3;
  if (!v3)
  {
    longName = self->_longName;
  }

  objc_storeStrong(&self->_canonicalName, longName);

  if (!self->_canonicalName)
  {
    sub_10001087C();
  }
}

- (void)register
{
  [(CLIOption *)self _finalize];
  if (qword_100025158 != -1)
  {
    sub_1000108E8();
  }

  v3 = qword_100025150;

  [v3 _registerOption:self];
}

+ (void)registerOptionWithShortName:(id)a3 longName:(id)a4 parameterCount:(unint64_t)a5 shortDescription:(id)a6 longDescription:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = objc_opt_new();
  [v15 setShortName:v14];

  [v15 setLongName:v13];
  [v15 setParameterCount:a5];
  [v15 setShortEnglishDescription:v12];

  [v15 setLongEnglishDescription:v11];
  [v15 register];
}

- (unint64_t)hash
{
  p_canonicalName = &self->_canonicalName;
  canonicalName = self->_canonicalName;
  if (canonicalName)
  {
  }

  else
  {
    v8[1] = v2;
    v9 = v3;
    sub_1000108FC(a2, self, p_canonicalName, v8);
    canonicalName = v8[0];
  }

  return [(NSString *)canonicalName hash];
}

- (void)setShortName:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = [v4 length] == 1;
    v4 = v8;
    if (!v5)
    {
      sub_10001098C();
      v4 = v8;
    }
  }

  v6 = [v4 copy];
  shortName = self->_shortName;
  self->_shortName = v6;
}

- (id)nameSummaryString
{
  if (self->_parameterCount == 1)
  {
    v3 = @" <argument>";
  }

  else
  {
    v3 = &stru_10001DB00;
  }

  result = v3;
  v5 = result;
  shortName = self->_shortName;
  longName = self->_longName;
  if (shortName)
  {
    if (longName)
    {
      [NSString stringWithFormat:@"[-%@ | --%@]%@", shortName, self->_longName, result];
    }

    else
    {
      [NSString stringWithFormat:@"-%@%@", self->_shortName, result, v9];
    }
  }

  else
  {
    if (!longName)
    {
      __break(1u);
      return result;
    }

    [NSString stringWithFormat:@"--%@%@", self->_longName, result, v9];
  }
  v8 = ;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_shortName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_longName copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v5[4] = self->_parameterCount;
  v10 = [(NSString *)self->_shortEnglishDescription copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_longEnglishDescription copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_canonicalName copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

@end