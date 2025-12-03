@interface PLDisambiguation
- (PLDisambiguation)initWithQueryTerm:(id)term disambiguationType:(unint64_t)type indexingCategories:(id)categories maxNumberOfResults:(unint64_t)results matchOptions:(unint64_t)options;
- (id)description;
@end

@implementation PLDisambiguation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  queryTerm = [(PLDisambiguation *)self queryTerm];
  disambiguationType = [(PLDisambiguation *)self disambiguationType];
  if (disambiguationType - 1 > 2)
  {
    v6 = @"PLDisambiguationTypeUndefined";
  }

  else
  {
    v6 = off_1E7571920[disambiguationType - 1];
  }

  v7 = [v3 stringWithFormat:@"QueryTerm: %@, disambiguationType: %@", queryTerm, v6];

  return v7;
}

- (PLDisambiguation)initWithQueryTerm:(id)term disambiguationType:(unint64_t)type indexingCategories:(id)categories maxNumberOfResults:(unint64_t)results matchOptions:(unint64_t)options
{
  termCopy = term;
  categoriesCopy = categories;
  if ([termCopy length])
  {
    if (type)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDisambiguation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"queryTerm.length > 0"}];

    if (type)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLDisambiguation.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"disambiguationType != PLDisambiguationTypeUndefined"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = PLDisambiguation;
  v15 = [(PLDisambiguation *)&v27 init];
  if (v15)
  {
    v16 = [termCopy copy];
    queryTerm = v15->_queryTerm;
    v15->_queryTerm = v16;

    v15->_disambiguationType = type;
    v15->_maxNumberOfResults = results;
    v15->_matchOptions = options;
    if ([categoriesCopy count])
    {
      v18 = categoriesCopy;
      indexingCategories = v15->_indexingCategories;
      v15->_indexingCategories = v18;
LABEL_13:

      goto LABEL_14;
    }

    switch(type)
    {
      case 1uLL:
        indexingCategories = objc_alloc_init(MEMORY[0x1E696AD50]);
        [(NSIndexSet *)indexingCategories addIndex:1];
        [(NSIndexSet *)indexingCategories addIndex:2];
        [(NSIndexSet *)indexingCategories addIndex:3];
        [(NSIndexSet *)indexingCategories addIndex:4];
        [(NSIndexSet *)indexingCategories addIndex:5];
        [(NSIndexSet *)indexingCategories addIndex:6];
        [(NSIndexSet *)indexingCategories addIndex:7];
        [(NSIndexSet *)indexingCategories addIndex:8];
        [(NSIndexSet *)indexingCategories addIndex:9];
        [(NSIndexSet *)indexingCategories addIndex:10];
        [(NSIndexSet *)indexingCategories addIndex:11];
        [(NSIndexSet *)indexingCategories addIndex:12];
        [(NSIndexSet *)indexingCategories addIndex:13];
        [(NSIndexSet *)indexingCategories addIndex:14];
        [(NSIndexSet *)indexingCategories addIndex:1007];
        [(NSIndexSet *)indexingCategories addIndex:1008];
        [(NSIndexSet *)indexingCategories addIndex:1000];
        [(NSIndexSet *)indexingCategories addIndex:1001];
        [(NSIndexSet *)indexingCategories addIndex:1700];
        [(NSIndexSet *)indexingCategories addIndex:1520];
        v20 = indexingCategories;
        v21 = 1521;
        goto LABEL_12;
      case 2uLL:
        indexingCategories = objc_alloc_init(MEMORY[0x1E696AD50]);
        [(NSIndexSet *)indexingCategories addIndex:1500];
        [(NSIndexSet *)indexingCategories addIndex:1501];
        [(NSIndexSet *)indexingCategories addIndex:1510];
        [(NSIndexSet *)indexingCategories addIndex:1511];
        [(NSIndexSet *)indexingCategories addIndex:1520];
        [(NSIndexSet *)indexingCategories addIndex:1521];
        [(NSIndexSet *)indexingCategories addIndex:1530];
        [(NSIndexSet *)indexingCategories addIndex:1531];
        [(NSIndexSet *)indexingCategories addIndex:1600];
        [(NSIndexSet *)indexingCategories addIndex:1601];
        [(NSIndexSet *)indexingCategories addIndex:1700];
        [(NSIndexSet *)indexingCategories addIndex:1701];
        [(NSIndexSet *)indexingCategories addIndex:1800];
        [(NSIndexSet *)indexingCategories addIndex:1802];
        v20 = indexingCategories;
        v21 = 1803;
        goto LABEL_12;
      case 3uLL:
        indexingCategories = objc_alloc_init(MEMORY[0x1E696AD50]);
        [(NSIndexSet *)indexingCategories addIndex:1300];
        [(NSIndexSet *)indexingCategories addIndex:1301];
        [(NSIndexSet *)indexingCategories addIndex:1330];
        v20 = indexingCategories;
        v21 = 1331;
LABEL_12:
        [(NSIndexSet *)v20 addIndex:v21];
        v22 = [(NSIndexSet *)indexingCategories copy];
        v23 = v15->_indexingCategories;
        v15->_indexingCategories = v22;

        goto LABEL_13;
    }
  }

LABEL_14:

  return v15;
}

@end