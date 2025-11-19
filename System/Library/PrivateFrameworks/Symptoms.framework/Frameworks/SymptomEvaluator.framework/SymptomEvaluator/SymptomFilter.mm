@interface SymptomFilter
- (SymptomFilter)init;
- (int)configureItem:(id)a3;
@end

@implementation SymptomFilter

- (SymptomFilter)init
{
  v6.receiver = self;
  v6.super_class = SymptomFilter;
  v2 = [(SymptomFilter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    potentialFilters = v2->_potentialFilters;
    v2->_potentialFilters = v3;
  }

  return v2;
}

- (int)configureItem:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"START_OF_DAY_FILTER"];
  if (v5)
  {
    v6 = [Filter initForSymptom:self->_targetSymptomId withParams:v5];
    currentFilter = self->_currentFilter;
    self->_currentFilter = v6;
  }

  else
  {
    currentFilter = [v4 objectForKey:@"TRIGGERING_SYMPTOM"];
    v8 = [v4 objectForKey:@"TRIGGERED_FILTER"];
    v9 = [v4 objectForKey:@"FINAL_FILTER"];
    v10 = [v4 objectForKey:@"DELAY_FOR_FINAL"];
    v11 = [SymptomStore idFromSymptomName:currentFilter];
    v12 = +[FilterActions initForSymptom:trigger:triggering:finally:after:](FilterActions, "initForSymptom:trigger:triggering:finally:after:", self->_targetSymptomId, [v11 intValue], v8, v9, v10);
    [(NSMutableDictionary *)self->_potentialFilters setObject:v12 forKey:v11];
  }

  return 0;
}

@end