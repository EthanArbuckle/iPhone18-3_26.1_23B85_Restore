@interface PKMediaName
+ (id)pkMediaNameWithString:(id)string;
- (BOOL)isRoll;
- (NSString)unitStr;
- (PKMediaName)initWithString:(id)string;
- (double)height;
- (double)width;
- (void)dealloc;
- (void)parseMediaName:(id)name;
@end

@implementation PKMediaName

+ (id)pkMediaNameWithString:(id)string
{
  stringCopy = string;
  v4 = [[PKMediaName alloc] initWithString:stringCopy];

  return v4;
}

- (PKMediaName)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = PKMediaName;
  v5 = [(PKMediaName *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKMediaName *)v5 setMediaName:stringCopy];
    [(PKMediaName *)v6 parseMediaName:stringCopy];
  }

  return v6;
}

- (void)dealloc
{
  [(PKMediaName *)self setMediaName:0];
  [(PKMediaName *)self setMediaClass:0];
  [(PKMediaName *)self setBaseName:0];
  [(PKMediaName *)self setWidthStr:0];
  v3.receiver = self;
  v3.super_class = PKMediaName;
  [(PKMediaName *)&v3 dealloc];
}

- (void)parseMediaName:(id)name
{
  nameCopy = name;
  v4 = strdup([nameCopy UTF8String]);
  v5 = strchr(v4, 95);
  if (!v5)
  {
    goto LABEL_23;
  }

  *v5 = 0;
  v6 = v5 + 1;
  v7 = strchr(v5 + 1, 95);
  if (!v7)
  {
    goto LABEL_23;
  }

  *v7 = 0;
  v8 = v7 + 1;
  v9 = strchr(v7 + 1, 120);
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9 + 1;
  *v9 = 0;
  for (i = v9 + 2; ; ++i)
  {
    v12 = *(i - 1);
    if ((v12 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) == 0) && v12 != 46)
    {
      break;
    }
  }

  if (*(i - 1) == 105)
  {
    if (*i == 110)
    {
      [(PKMediaName *)self setConversionFactor:2540.0];
      v13 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (*(i - 1) != 109 || *i != 109)
  {
    goto LABEL_16;
  }

  [(PKMediaName *)self setConversionFactor:100.0];
  v13 = 2;
LABEL_17:
  *(i - 1) = 0;
  if (v13 && v8 && v4 && v6 && v10)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    [(PKMediaName *)self setMediaClass:v14];

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    [(PKMediaName *)self setBaseName:v15];

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    [(PKMediaName *)self setWidthStr:v16];

    [(PKMediaName *)self setWidthInUnits:atof(v8)];
    [(PKMediaName *)self setHeightInUnits:atof(v10)];
    [(PKMediaName *)self setUnits:v13];
    goto LABEL_24;
  }

LABEL_23:
  NSLog(&cfstr_SFailedOn.isa, "[PKMediaName parseMediaName:]", nameCopy);
LABEL_24:
  free(v4);
}

- (NSString)unitStr
{
  units = [(PKMediaName *)self units];
  v3 = &stru_28719ACE8;
  if (units == 2)
  {
    v3 = @"mm";
  }

  if (units == 1)
  {
    return @"in";
  }

  else
  {
    return &v3->isa;
  }
}

- (BOOL)isRoll
{
  mediaClass = [(PKMediaName *)self mediaClass];
  v3 = [mediaClass isEqualToString:@"roll"];

  return v3;
}

- (double)width
{
  [(PKMediaName *)self widthInUnits];
  v4 = v3;
  [(PKMediaName *)self conversionFactor];
  return v4 * v5;
}

- (double)height
{
  [(PKMediaName *)self heightInUnits];
  v4 = v3;
  [(PKMediaName *)self conversionFactor];
  return v4 * v5;
}

@end