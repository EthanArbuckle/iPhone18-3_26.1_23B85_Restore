@interface SUCoreErrorLayerGroup
- (id)description;
- (id)initForLayer:(int64_t)a3 withDomain:(id)a4;
- (id)initForLayer:(int64_t)a3 withDomain:(id)a4 minCode:(int64_t)a5 maxCode:(int64_t)a6;
- (id)initForLayer:(int64_t)a3 withDomain:(id)a4 minCode:(int64_t)a5 maxCode:(int64_t)a6 indicating:(int64_t)a7 ifKeyTrue:(id)a8 keyMatchTrueMap:(id)a9;
- (id)summary;
@end

@implementation SUCoreErrorLayerGroup

- (id)initForLayer:(int64_t)a3 withDomain:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = SUCoreErrorLayerGroup;
  v8 = [(SUCoreErrorLayerGroup *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_errorLayer = a3;
    objc_storeStrong(&v8->_domain, a4);
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

- (id)initForLayer:(int64_t)a3 withDomain:(id)a4 minCode:(int64_t)a5 maxCode:(int64_t)a6
{
  v11 = a4;
  v17.receiver = self;
  v17.super_class = SUCoreErrorLayerGroup;
  v12 = [(SUCoreErrorLayerGroup *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_errorLayer = a3;
    objc_storeStrong(&v12->_domain, a4);
    v13->_minCode = a5;
    v13->_maxCode = a6;
    keyMatchTrue = v13->_keyMatchTrue;
    v13->_indications = 0;
    v13->_keyMatchTrue = 0;

    keyMatchTrueMap = v13->_keyMatchTrueMap;
    v13->_keyMatchTrueMap = 0;
  }

  return v13;
}

- (id)initForLayer:(int64_t)a3 withDomain:(id)a4 minCode:(int64_t)a5 maxCode:(int64_t)a6 indicating:(int64_t)a7 ifKeyTrue:(id)a8 keyMatchTrueMap:(id)a9
{
  v15 = a4;
  v16 = a8;
  v17 = a9;
  v22.receiver = self;
  v22.super_class = SUCoreErrorLayerGroup;
  v18 = [(SUCoreErrorLayerGroup *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_errorLayer = a3;
    objc_storeStrong(&v18->_domain, a4);
    v19->_minCode = a5;
    v19->_maxCode = a6;
    v19->_indications = a7;
    objc_storeStrong(&v19->_keyMatchTrue, a8);
    objc_storeStrong(&v19->_keyMatchTrueMap, a9);
  }

  return v19;
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreErrorLayerGroup *)self errorLayer]];
  v5 = [(SUCoreErrorLayerGroup *)self domain];
  v6 = [(SUCoreErrorLayerGroup *)self minCode];
  v7 = [(SUCoreErrorLayerGroup *)self maxCode];
  v8 = [(SUCoreErrorLayerGroup *)self indications];
  v9 = @"DEFINED";
  if (!v8)
  {
    v9 = @"NONE";
  }

  v10 = [v3 initWithFormat:@"SUCoreErrorLayerGroup(layer=%@, domain=%@, minCode=%d, maxCode=%d, indications=%@)", v4, v5, v6, v7, v9];

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [SUCoreErrorInformation nameForSUCoreLayer:[(SUCoreErrorLayerGroup *)self errorLayer]];
  v5 = [(SUCoreErrorLayerGroup *)self domain];
  v6 = [(SUCoreErrorLayerGroup *)self minCode];
  v7 = [(SUCoreErrorLayerGroup *)self maxCode];
  v8 = [(SUCoreErrorLayerGroup *)self indications];
  v9 = [(SUCoreErrorLayerGroup *)self keyMatchTrue];
  if (v9)
  {
    v10 = [(SUCoreErrorLayerGroup *)self keyMatchTrue];
  }

  else
  {
    v10 = @"NONE";
  }

  v11 = [(SUCoreErrorLayerGroup *)self keyMatchTrueMap];
  v12 = @"DEFINED";
  if (!v11)
  {
    v12 = @"NONE";
  }

  v13 = [v3 initWithFormat:@"\n[>>>\n              layer: %@\n             domain: %@\n            minCode: %d\n            maxCode: %d\n        indications: 0x%08llX\n       keyMatchTrue: %@\n    keyMatchTrueMap: %@\n<<<]", v4, v5, v6, v7, v8, v10, v12];

  if (v9)
  {
  }

  return v13;
}

@end