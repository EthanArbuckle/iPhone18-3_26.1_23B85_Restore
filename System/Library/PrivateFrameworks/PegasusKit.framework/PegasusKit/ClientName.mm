@interface ClientName
+ (id)extractClientNameFromString:(id)string;
+ (id)extractClientNameFromUserAgent:(id)agent allowAbbreviation:(BOOL)abbreviation;
@end

@implementation ClientName

+ (id)extractClientNameFromUserAgent:(id)agent allowAbbreviation:(BOOL)abbreviation
{
  if (agent)
  {
    v5 = sub_1C04F6750();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  static ClientName.extractClientNameFromUserAgent(_:allowAbbreviation:)(v5, v7, abbreviation);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1C04F6740();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)extractClientNameFromString:(id)string
{
  if (string)
  {
    v3 = sub_1C04F6750();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  static ClientName.extractClientNameFromString(_:)(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1C04F6740();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end