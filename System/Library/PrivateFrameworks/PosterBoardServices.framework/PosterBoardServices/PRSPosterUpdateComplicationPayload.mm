@interface PRSPosterUpdateComplicationPayload
- (PRSPosterUpdateComplicationPayload)initWithAmbientWidgets:(id)widgets;
- (PRSPosterUpdateComplicationPayload)initWithCoder:(id)coder;
- (PRSPosterUpdateComplicationPayload)initWithComplications:(id)complications;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rawValue;
@end

@implementation PRSPosterUpdateComplicationPayload

- (PRSPosterUpdateComplicationPayload)initWithComplications:(id)complications
{
  complicationsCopy = complications;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateComplicationPayload;
  _init = [(PRSPosterUpdatePayload *)&v9 _init];
  if (_init)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:complicationsCopy copyItems:1];
    complications = _init->_complications;
    _init->_complications = v6;
  }

  return _init;
}

- (PRSPosterUpdateComplicationPayload)initWithAmbientWidgets:(id)widgets
{
  widgetsCopy = widgets;
  v9.receiver = self;
  v9.super_class = PRSPosterUpdateComplicationPayload;
  _init = [(PRSPosterUpdatePayload *)&v9 _init];
  if (_init)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:widgetsCopy copyItems:1];
    ambientWidgets = _init->_ambientWidgets;
    _init->_ambientWidgets = v6;
  }

  return _init;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  complications = self->_complications;

  return [v4 initWithComplications:complications];
}

- (PRSPosterUpdateComplicationPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(PRSPosterUpdatePayload *)self _init];
  if (_init)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_self();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_complications"];
    complications = _init->_complications;
    _init->_complications = v9;
  }

  return _init;
}

- (id)rawValue
{
  v2 = [(NSArray *)self->_complications copy];

  return v2;
}

@end