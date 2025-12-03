@interface JSBag
- (id)BOOLean:(id)lean;
- (id)array:(id)array;
- (id)dictionary:(id)dictionary;
- (id)double:(id)double;
- (id)integer:(id)integer;
- (id)string:(id)string;
- (id)url:(id)url;
@end

@implementation JSBag

- (id)string:(id)string
{
  stringCopy = string;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

- (id)double:(id)double
{
  doubleCopy = double;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

- (id)integer:(id)integer
{
  integerCopy = integer;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

- (id)BOOLean:(id)lean
{
  leanCopy = lean;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

- (id)array:(id)array
{
  arrayCopy = array;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

- (id)dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

- (id)url:(id)url
{
  urlCopy = url;
  selfCopy = self;
  v6 = sub_27058A394();

  return v6;
}

@end