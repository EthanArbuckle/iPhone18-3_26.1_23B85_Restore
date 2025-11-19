@interface PRSPosterUpdateComplicationPayload
- (PRSPosterUpdateComplicationPayload)initWithAmbientWidgets:(id)a3;
- (PRSPosterUpdateComplicationPayload)initWithCoder:(id)a3;
- (PRSPosterUpdateComplicationPayload)initWithComplications:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)rawValue;
@end

@implementation PRSPosterUpdateComplicationPayload

- (PRSPosterUpdateComplicationPayload)initWithComplications:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateComplicationPayload;
  v5 = [(PRSPosterUpdatePayload *)&v9 _init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
    complications = v5->_complications;
    v5->_complications = v6;
  }

  return v5;
}

- (PRSPosterUpdateComplicationPayload)initWithAmbientWidgets:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateComplicationPayload;
  v5 = [(PRSPosterUpdatePayload *)&v9 _init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v4 copyItems:1];
    ambientWidgets = v5->_ambientWidgets;
    v5->_ambientWidgets = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  complications = self->_complications;

  return [v4 initWithComplications:complications];
}

- (PRSPosterUpdateComplicationPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRSPosterUpdatePayload *)self _init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_complications"];
    complications = v5->_complications;
    v5->_complications = v9;
  }

  return v5;
}

- (id)rawValue
{
  v2 = [(NSArray *)self->_complications copy];

  return v2;
}

@end