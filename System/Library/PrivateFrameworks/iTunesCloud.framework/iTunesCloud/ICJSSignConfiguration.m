@interface ICJSSignConfiguration
+ (id)storePlatformConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addRequestComponent:(int64_t)a3 withName:(id)a4;
- (void)_enumerateComponentsUsingBlock:(id)a3;
@end

@implementation ICJSSignConfiguration

+ (id)storePlatformConfiguration
{
  v2 = objc_alloc_init(a1);
  [v2 includeHeaderWithName:@"X-JS-TIMESTAMP"];
  [v2 includeHeaderWithName:@"X-Apple-Store-Front"];
  [v2 includeQueryItemWithName:@"caller"];
  [v2 includeQueryItemWithName:@"id"];
  [v2 includeQueryItemWithName:@"p"];
  [v2 setSignatureDataHeaderName:@"X-JS-SP-TOKEN"];

  return v2;
}

- (void)_enumerateComponentsUsingBlock:(id)a3
{
  v4 = a3;
  components = self->_components;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ICJSSignConfiguration__enumerateComponentsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BF3630;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)components enumerateObjectsUsingBlock:v7];
}

void __56__ICJSSignConfiguration__enumerateComponentsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = [a2 integerValue];
  v9 = [*(*(a1 + 32) + 8) objectAtIndex:a3];
  (*(v7 + 16))(v7, v8, v9, a4);
}

- (void)_addRequestComponent:(int64_t)a3 withName:(id)a4
{
  v6 = a4;
  componentNames = self->_componentNames;
  v13 = v6;
  if (!componentNames)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = self->_componentNames;
    self->_componentNames = v8;

    v6 = v13;
    componentNames = self->_componentNames;
  }

  [(NSMutableArray *)componentNames addObject:v6];
  if (!self->_components)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    components = self->_components;
    self->_components = v10;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a3];
  [(NSMutableArray *)self->_components addObject:v12];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSMutableArray *)self->_componentNames mutableCopyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSMutableArray *)self->_components mutableCopyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSString *)self->_signatureDataCookieName copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;

    v12 = [(NSString *)self->_signatureDataHeaderName copyWithZone:a3];
    v13 = v5[4];
    v5[4] = v12;
  }

  return v5;
}

@end