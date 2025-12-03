@interface OKMediaSearchClusterPredicate
- (OKMediaSearchClusterPredicate)initWithString:(id)string type:(unint64_t)type options:(unint64_t)options;
- (id)evaluateItems:(id)items progressBlock:(id)block;
- (void)dealloc;
@end

@implementation OKMediaSearchClusterPredicate

- (OKMediaSearchClusterPredicate)initWithString:(id)string type:(unint64_t)type options:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = OKMediaSearchClusterPredicate;
  v8 = [(OKMediaClusterPredicate *)&v10 init];
  if (v8)
  {
    v8->_searchString = [string copy];
    v8->_type = type;
    v8->_options = options;
    -[OKMediaClusterPredicate setUniqueID:](v8, "setUniqueID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"search", -[NSString sha1HashString](v8->_searchString, "sha1HashString")]);
    [(OKMediaClusterPredicate *)v8 setCategory:3];
  }

  return v8;
}

- (void)dealloc
{
  searchString = self->_searchString;
  if (searchString)
  {

    self->_searchString = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMediaSearchClusterPredicate;
  [(OKMediaClusterPredicate *)&v4 dealloc];
}

- (id)evaluateItems:(id)items progressBlock:(id)block
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  obj = [MEMORY[0x277CBEB58] setWithSet:items];
  v7 = objc_alloc_init(OKMediaCluster);
  -[OKMediaCluster setTitle:](v7, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Search Results", @"Search Results", @"Localizable"}]);
  v44 = v7;
  [v6 addObject:v7];
  type = self->_type;
  if (type)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v64;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v63 + 1) + 8 * i);
          if ([objc_msgSend(v13 "metadata")] && objc_msgSend(objc_msgSend(objc_msgSend(v13, "metadata"), "name"), "rangeOfString:options:", self->_searchString, self->_options) != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)[(OKMediaCluster *)v44 items] addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v10);
    }

    [obj minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", -[OKMediaCluster items](v44, "items"))}];
    type = self->_type;
  }

  if ((type & 2) != 0)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v14 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v60;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v60 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v59 + 1) + 8 * j);
          if ([objc_msgSend(v18 "metadata")] && objc_msgSend(objc_msgSend(objc_msgSend(v18, "metadata"), "caption"), "rangeOfString:options:", self->_searchString, self->_options) != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)[(OKMediaCluster *)v44 items] addObject:v18];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v15);
    }

    [obj minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", -[OKMediaCluster items](v44, "items"))}];
    type = self->_type;
  }

  v41 = v6;
  if ((type & 8) != 0)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v43 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v43)
    {
      v19 = *v56;
      v42 = *v56;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v56 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v55 + 1) + 8 * k);
          v22 = [objc_msgSend(v21 "metadata")];
          if (v22)
          {
            v23 = v22;
            if ([v22 count])
            {
              v53 = 0u;
              v54 = 0u;
              v52 = 0u;
              v51 = 0u;
              v24 = [v23 countByEnumeratingWithState:&v51 objects:v68 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v52;
                while (2)
                {
                  for (m = 0; m != v25; ++m)
                  {
                    if (*v52 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    if ([*(*(&v51 + 1) + 8 * m) rangeOfString:self->_searchString options:self->_options] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [(NSMutableArray *)[(OKMediaCluster *)v44 items] addObject:v21];
                      v19 = v42;
                      goto LABEL_43;
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v51 objects:v68 count:16];
                  v19 = v42;
                  if (v25)
                  {
                    continue;
                  }

                  break;
                }
              }
            }
          }

LABEL_43:
          ;
        }

        v43 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v43);
    }

    [obj minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", -[OKMediaCluster items](v44, "items"))}];
    type = self->_type;
    v6 = v41;
  }

  if ((type & 4) != 0)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v28 = [obj countByEnumeratingWithState:&v47 objects:v67 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      do
      {
        for (n = 0; n != v29; ++n)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v47 + 1) + 8 * n);
          v33 = [objc_msgSend(v32 "metadata")];
          if (v33)
          {
            v34 = v33;
            v35 = MEMORY[0x277D62788];
            [MEMORY[0x277D62788] recommendedAccuracy];
            v36 = [v35 operationWithLocation:v34 accuracy:?];
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __61__OKMediaSearchClusterPredicate_evaluateItems_progressBlock___block_invoke;
            v46[3] = &unk_279C8FBE0;
            v46[4] = self;
            v46[5] = v44;
            v46[6] = v32;
            [v36 setFinishBlock:v46];
            [v36 setContext:self];
            [v36 performSynchronously:&__block_literal_global_12 timeout:{dispatch_time(0, 2000000000)}];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v47 objects:v67 count:16];
      }

      while (v29);
    }

    [obj minusSet:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", -[OKMediaCluster items](v44, "items"))}];
    v6 = v41;
  }

  v37 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:0];
  items = [(OKMediaCluster *)v44 items];
  -[NSMutableArray sortUsingDescriptors:](items, "sortUsingDescriptors:", [MEMORY[0x277CBEA60] arrayWithObject:v37]);
  objc_autoreleasePoolPop(context);
  return v6;
}

uint64_t __61__OKMediaSearchClusterPredicate_evaluateItems_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    if ((v5 = [objc_msgSend(a2 "placemarks")], objc_msgSend(v5, "country")) && objc_msgSend(objc_msgSend(v5, "country"), "rangeOfString:options:", *(*(a1 + 32) + 24), *(*(a1 + 32) + 40)) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "administrativeArea") && objc_msgSend(objc_msgSend(v5, "administrativeArea"), "rangeOfString:options:", *(*(a1 + 32) + 24), *(*(a1 + 32) + 40)) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "locality") && objc_msgSend(objc_msgSend(v5, "locality"), "rangeOfString:options:", *(*(a1 + 32) + 24), *(*(a1 + 32) + 40)) != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v5, "subLocality") && objc_msgSend(objc_msgSend(v5, "subLocality"), "rangeOfString:options:", *(*(a1 + 32) + 24), *(*(a1 + 32) + 40)) != 0x7FFFFFFFFFFFFFFFLL || (result = objc_msgSend(v5, "areasOfInterest")) != 0 && (result = objc_msgSend(objc_msgSend(v5, "country"), "rangeOfString:options:", *(*(a1 + 32) + 24), *(*(a1 + 32) + 40)), result != 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = [*(a1 + 40) items];
      v7 = *(a1 + 48);

      return [v6 addObject:v7];
    }
  }

  return result;
}

@end