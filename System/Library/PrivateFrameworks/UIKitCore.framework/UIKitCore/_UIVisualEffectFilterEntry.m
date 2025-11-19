@interface _UIVisualEffectFilterEntry
- (BOOL)isSameTypeOfEffect:(id)a3;
- (CAFilter)filter;
- (NSString)description;
- (_UIVisualEffectFilterEntry)initWithFilterType:(id)a3 configurationValues:(id)a4 requestedValues:(id)a5 identityValues:(id)a6;
- (double)scaleHintAsRequested:(BOOL)a3;
- (id)copyForTransitionOut;
- (id)copyForTransitionToEffect:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)valueAsRequested:(BOOL)a3;
- (void)forceUniqueName;
@end

@implementation _UIVisualEffectFilterEntry

- (CAFilter)filter
{
  filter = self->_filter;
  if (!filter)
  {
    v4 = [MEMORY[0x1E6979378] filterWithType:self->_filterType];
    v5 = self->_filter;
    self->_filter = v4;

    [(CAFilter *)self->_filter setName:self->_filterName];
    configurationValues = self->_configurationValues;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36___UIVisualEffectFilterEntry_filter__block_invoke;
    v8[3] = &unk_1E70F6948;
    v8[4] = self;
    [(NSDictionary *)configurationValues enumerateKeysAndObjectsUsingBlock:v8];
    filter = self->_filter;
  }

  return filter;
}

- (_UIVisualEffectFilterEntry)initWithFilterType:(id)a3 configurationValues:(id)a4 requestedValues:(id)a5 identityValues:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = _UIVisualEffectFilterEntry;
  v14 = [(_UIVisualEffectFilterEntry *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    filterType = v14->_filterType;
    v14->_filterType = v15;

    objc_storeStrong(&v14->_filterName, v14->_filterType);
    v17 = [v11 copy];
    configurationValues = v14->_configurationValues;
    v14->_configurationValues = v17;

    v19 = [v12 copy];
    requestedValues = v14->_requestedValues;
    v14->_requestedValues = v19;

    v21 = [v13 copy];
    identityValues = v14->_identityValues;
    v14->_identityValues = v21;
  }

  return v14;
}

- (id)valueAsRequested:(BOOL)a3
{
  v3 = 48;
  if (a3)
  {
    v3 = 40;
  }

  return *(&self->super.isa + v3);
}

- (double)scaleHintAsRequested:(BOOL)a3
{
  v3 = 64;
  if (a3)
  {
    v3 = 56;
  }

  return *(&self->super.isa + v3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithFilterType:self->_filterType configurationValues:self->_configurationValues requestedValues:self->_requestedValues identityValues:self->_identityValues];
  [v4 setRequestedScaleHint:self->_requestedScaleHint];
  [v4 setIdentityScaleHint:self->_identityScaleHint];
  return v4;
}

- (BOOL)isSameTypeOfEffect:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_filterType;
    v6 = v4[3];
    if (self->_useRelaxedDiffingRule && (v4[2] & 1) != 0)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v7 = self->_configurationValues;
      v8 = v4[4];
    }

    v9 = v8;
    v10 = v9;
    if (v5 == v6 && v7 == v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v5 && v6 && v7 && v9)
      {
        if ([(NSString *)v5 isEqualToString:v6])
        {
          v12 = [(NSDictionary *)v7 isEqualToDictionary:v10];
        }

        else
        {
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyForTransitionToEffect:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithFilterType:self->_filterType configurationValues:self->_configurationValues requestedValues:v4[5] identityValues:self->_requestedValues];
  v6 = v4[7];

  *(v5 + 56) = v6;
  *(v5 + 64) = self->_requestedScaleHint;
  return v5;
}

- (id)copyForTransitionOut
{
  v2 = [(_UIVisualEffectFilterEntry *)self copy];
  v3 = *(v2 + 40);
  objc_storeStrong((v2 + 40), *(v2 + 48));
  v4 = *(v2 + 48);
  *(v2 + 48) = v3;
  v5 = v3;

  *(v2 + 56) = vextq_s8(*(v2 + 56), *(v2 + 56), 8uLL);
  return v2;
}

- (void)forceUniqueName
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%p]", self->_filterType, self];
  filterName = self->_filterName;
  self->_filterName = v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %p>: filter=%@", v5, self, self->_filterType];

  v7 = [(NSDictionary *)self->_configurationValues count];
  if (v7 + [(NSDictionary *)self->_requestedValues count])
  {
    objc_msgSend(v6, "appendString:", @" parameters={(");
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    configurationValues = self->_configurationValues;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __41___UIVisualEffectFilterEntry_description__block_invoke;
    v18[3] = &unk_1E70F6E30;
    v20 = v21;
    v9 = v6;
    v19 = v9;
    [(NSDictionary *)configurationValues enumerateKeysAndObjectsUsingBlock:v18];
    requestedValues = self->_requestedValues;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41___UIVisualEffectFilterEntry_description__block_invoke_2;
    v14[3] = &unk_1E70F6E58;
    v17 = v21;
    v11 = v9;
    v15 = v11;
    v16 = self;
    [(NSDictionary *)requestedValues enumerateKeysAndObjectsUsingBlock:v14];
    [v11 appendString:@"}"]);

    _Block_object_dispose(v21, 8);
  }

  requestedScaleHint = self->_requestedScaleHint;
  if (requestedScaleHint > 0.0)
  {
    [v6 appendFormat:@" scale=[%f][%f]", *&self->_identityScaleHint, *&requestedScaleHint];
  }

  return v6;
}

@end