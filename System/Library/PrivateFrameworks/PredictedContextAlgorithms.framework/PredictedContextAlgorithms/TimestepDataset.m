@interface TimestepDataset
- (id)getFeatureMatrixWithUnknownLoiLabel:(id)a3;
@end

@implementation TimestepDataset

- (id)getFeatureMatrixWithUnknownLoiLabel:(id)a3
{
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(NSMutableArray *)self->_ordinalLoiLabels count];
  if (v6 == [(NSMutableArray *)self->_dayOfWeekSinArray count]&& (v7 = [(NSMutableArray *)self->_ordinalLoiLabels count], v7 == [(NSMutableArray *)self->_dayOfWeekCosArray count]) && (v8 = [(NSMutableArray *)self->_ordinalLoiLabels count], v8 == [(NSMutableArray *)self->_timeOfDaySinArray count]) && (v9 = [(NSMutableArray *)self->_ordinalLoiLabels count], v9 == [(NSMutableArray *)self->_timeOfDayCosArray count]))
  {
    if ([(NSMutableArray *)self->_loiAtTimestepArray count])
    {
      v10 = 0;
      do
      {
        v11 = [(NSMutableArray *)self->_ordinalLoiLabels objectAtIndexedSubscript:v10];
        v12 = [(NSMutableArray *)self->_loiAtTimestepArray objectAtIndexedSubscript:v10];
        v13 = +[PCNeuralNetworkUtilities kUnknownString];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          v15 = v4;

          [(NSMutableArray *)self->_ordinalLoiLabels setObject:v15 atIndexedSubscript:v10];
          v11 = v15;
        }

        v40[0] = v11;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
        v17 = [v16 mutableCopy];

        v18 = [(NSMutableArray *)self->_dayOfWeekSinArray objectAtIndexedSubscript:v10];
        [v17 addObject:v18];

        v19 = [(NSMutableArray *)self->_dayOfWeekCosArray objectAtIndexedSubscript:v10];
        [v17 addObject:v19];

        v20 = [(NSMutableArray *)self->_timeOfDaySinArray objectAtIndexedSubscript:v10];
        [v17 addObject:v20];

        v21 = [(NSMutableArray *)self->_timeOfDayCosArray objectAtIndexedSubscript:v10];
        [v17 addObject:v21];

        [v5 addObject:v17];
        ++v10;
      }

      while ([(NSMutableArray *)self->_loiAtTimestepArray count]> v10);
    }
  }

  else
  {
    v22 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NSMutableArray *)self->_ordinalLoiLabels count];
      v24 = [(NSMutableArray *)self->_dayOfWeekSinArray count];
      v25 = [(NSMutableArray *)self->_dayOfWeekCosArray count];
      v26 = [(NSMutableArray *)self->_timeOfDaySinArray count];
      v27 = [(NSMutableArray *)self->_timeOfDayCosArray count];
      v30 = 134219008;
      v31 = v23;
      v32 = 2048;
      v33 = v24;
      v34 = 2048;
      v35 = v25;
      v36 = 2048;
      v37 = v26;
      v38 = 2048;
      v39 = v27;
      _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_DEFAULT, "Error: feature matrix columns have non-homgenous lengths, onehot: %lu, dayofweeksin: %lu, dayofweekcos: %lu, todsin: %lu, todcos: %lu", &v30, 0x34u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];

  return v5;
}

@end