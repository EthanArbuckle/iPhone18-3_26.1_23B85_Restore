@interface SUCoreErrorLayerGroup
- (id)description;
- (id)initForLayer:(int64_t)layer withDomain:(id)domain;
- (id)initForLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode;
- (id)initForLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map;
- (id)summary;
@end

@implementation SUCoreErrorLayerGroup

- (id)initForLayer:(int64_t)layer withDomain:(id)domain
{
  domainCopy = domain;
  v13.receiver = self;
  v13.super_class = SUCoreErrorLayerGroup;
  v8 = [(SUCoreErrorLayerGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_errorLayer = layer;
    objc_storeStrong(&v8->_domain, domain);
    v9->_minCode = -1;
    v9->_maxCode = -1;
    keyMatchTrue = v9->_keyMatchTrue;
    v9->_indications = 0;
    v9->_keyMatchTrue = 0;

    keyMatchTrueMap = v9->_keyMatchTrueMap;
    v9->_keyMatchTrueMap = 0;
  }

  return v9;
}

- (id)initForLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode
{
  domainCopy = domain;
  v17.receiver = self;
  v17.super_class = SUCoreErrorLayerGroup;
  v12 = [(SUCoreErrorLayerGroup *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_errorLayer = layer;
    objc_storeStrong(&v12->_domain, domain);
    v13->_minCode = code;
    v13->_maxCode = maxCode;
    keyMatchTrue = v13->_keyMatchTrue;
    v13->_indications = 0;
    v13->_keyMatchTrue = 0;

    keyMatchTrueMap = v13->_keyMatchTrueMap;
    v13->_keyMatchTrueMap = 0;
  }

  return v13;
}

- (id)initForLayer:(int64_t)layer withDomain:(id)domain minCode:(int64_t)code maxCode:(int64_t)maxCode indicating:(int64_t)indicating ifKeyTrue:(id)true keyMatchTrueMap:(id)map
{
  domainCopy = domain;
  trueCopy = true;
  mapCopy = map;
  v22.receiver = self;
  v22.super_class = SUCoreErrorLayerGroup;
  v18 = [(SUCoreErrorLayerGroup *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_errorLayer = layer;
    objc_storeStrong(&v18->_domain, domain);
    v19->_minCode = code;
    v19->_maxCode = maxCode;
    v19->_indications = indicating;
    objc_storeStrong(&v19->_keyMatchTrue, true);
    objc_storeStrong(&v19->_keyMatchTrueMap, map);
  }

  return v19;
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreErrorLayerGroup *)self errorLayer]];
  domain = [(SUCoreErrorLayerGroup *)self domain];
  minCode = [(SUCoreErrorLayerGroup *)self minCode];
  maxCode = [(SUCoreErrorLayerGroup *)self maxCode];
  indications = [(SUCoreErrorLayerGroup *)self indications];
  v9 = @"DEFINED";
  if (!indications)
  {
    v9 = @"NONE";
  }

  v10 = [v3 initWithFormat:@"SUCoreErrorLayerGroup(layer=%@, domain=%@, minCode=%d, maxCode=%d, indications=%@)", v4, domain, minCode, maxCode, v9];

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreErrorLayerGroup *)self errorLayer]];
  domain = [(SUCoreErrorLayerGroup *)self domain];
  minCode = [(SUCoreErrorLayerGroup *)self minCode];
  maxCode = [(SUCoreErrorLayerGroup *)self maxCode];
  indications = [(SUCoreErrorLayerGroup *)self indications];
  keyMatchTrue = [(SUCoreErrorLayerGroup *)self keyMatchTrue];
  if (keyMatchTrue)
  {
    keyMatchTrue2 = [(SUCoreErrorLayerGroup *)self keyMatchTrue];
  }

  else
  {
    keyMatchTrue2 = @"NONE";
  }

  keyMatchTrueMap = [(SUCoreErrorLayerGroup *)self keyMatchTrueMap];
  v12 = @"DEFINED";
  if (!keyMatchTrueMap)
  {
    v12 = @"NONE";
  }

  v13 = [v3 initWithFormat:@"\n[>>>\n              layer: %@\n             domain: %@\n            minCode: %d\n            maxCode: %d\n        indications: 0x%08llX\n       keyMatchTrue: %@\n    keyMatchTrueMap: %@\n<<<]", v4, domain, minCode, maxCode, indications, keyMatchTrue2, v12];

  if (keyMatchTrue)
  {
  }

  return v13;
}

@end