@interface BYLocaleCountry
+ (id)comparatorForLocale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation BYLocaleCountry

+ (id)comparatorForLocale:(id)locale
{
  localeCopy = locale;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__BYLocaleCountry_comparatorForLocale___block_invoke;
  v8[3] = &unk_1E7D02FF0;
  v9 = localeCopy;
  v4 = localeCopy;
  v5 = MEMORY[0x1B8CC28E0](v8);
  v6 = MEMORY[0x1B8CC28E0]();

  return v6;
}

uint64_t __39__BYLocaleCountry_comparatorForLocale___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 name];
  v8 = [v5 name];

  v9 = [v6 name];

  v10 = [v7 compare:v8 options:1 range:0 locale:{objc_msgSend(v9, "length"), *(a1 + 32)}];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  code = [(BYLocaleCountry *)self code];
  name = [(BYLocaleCountry *)self name];
  v6 = [v3 stringWithFormat:@"%@: %@", code, name];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    code = [(BYLocaleCountry *)self code];
    code2 = [equalCopy code];
    v7 = [code isEqual:code2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end