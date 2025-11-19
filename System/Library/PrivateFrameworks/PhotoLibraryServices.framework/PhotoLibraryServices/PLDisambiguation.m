@interface PLDisambiguation
- (PLDisambiguation)initWithQueryTerm:(id)a3 disambiguationType:(unint64_t)a4 indexingCategories:(id)a5 maxNumberOfResults:(unint64_t)a6 matchOptions:(unint64_t)a7;
- (id)description;
@end

@implementation PLDisambiguation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLDisambiguation *)self queryTerm];
  v5 = [(PLDisambiguation *)self disambiguationType];
  if (v5 - 1 > 2)
  {
    v6 = @"PLDisambiguationTypeUndefined";
  }

  else
  {
    v6 = off_1E7571920[v5 - 1];
  }

  v7 = [v3 stringWithFormat:@"QueryTerm: %@, disambiguationType: %@", v4, v6];

  return v7;
}

- (PLDisambiguation)initWithQueryTerm:(id)a3 disambiguationType:(unint64_t)a4 indexingCategories:(id)a5 maxNumberOfResults:(unint64_t)a6 matchOptions:(unint64_t)a7
{
  v13 = a3;
  v14 = a5;
  if ([v13 length])
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLDisambiguation.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"queryTerm.length > 0"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"PLDisambiguation.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"disambiguationType != PLDisambiguationTypeUndefined"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = PLDisambiguation;
  v15 = [(PLDisambiguation *)&v27 init];
  if (v15)
  {
    v16 = [v13 copy];
    queryTerm = v15->_queryTerm;
    v15->_queryTerm = v16;

    v15->_disambiguationType = a4;
    v15->_maxNumberOfResults = a6;
    v15->_matchOptions = a7;
    if ([v14 count])
    {
      v18 = v14;
      indexingCategories = v15->_indexingCategories;
      v15->_indexingCategories = v18;
LABEL_13:

      goto LABEL_14;
    }

    switch(a4)
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