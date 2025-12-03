@interface AccelerometerBuffer
- ($01BB1521EC52D44A8E7628F5261DCEC8)data;
- (AccelerometerBuffer)bufferWithMovingSum:(id *)sum;
- (AccelerometerBuffer)initWithCapacity:(unint64_t)capacity accelerometerSampleRateInHz:(unint64_t)hz;
- (id)csv;
- (id)description;
- (id)logBuffer;
- (void)_fillAccelBufferBeforeFirstSampleTimestamp:(double)timestamp;
- (void)addData:(id)data timestamp:(double)timestamp;
- (void)resetMovingSum;
@end

@implementation AccelerometerBuffer

- (AccelerometerBuffer)initWithCapacity:(unint64_t)capacity accelerometerSampleRateInHz:(unint64_t)hz
{
  v12 = a2;
  capacityCopy = capacity;
  hzCopy = hz;
  v13 = 0;
  v9.receiver = self;
  v9.super_class = AccelerometerBuffer;
  v13 = [(AccelerometerBuffer *)&v9 init];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [v4 initWithCapacity:capacityCopy];
    accelBuffer = v13->_accelBuffer;
    v13->_accelBuffer = v5;
    MEMORY[0x277D82BD8](accelBuffer);
    v13->_bufferSize = capacityCopy;
    v13->_sampleRate = hzCopy;
    v13->_movingSum.x = 0.0;
    v13->_movingSum.y = 0.0;
    v13->_movingSum.z = 0.0;
  }

  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v8;
}

- (AccelerometerBuffer)bufferWithMovingSum:(id *)sum
{
  if (sum)
  {
    *sum = self->_movingSum;
  }

  return self->_accelBuffer;
}

- (void)addData:(id)data timestamp:(double)timestamp
{
  dataCopy = data;
  selfCopy = self;
  v17 = a2;
  timestampCopy = timestamp;
  if ([(NSMutableArray *)self->_accelBuffer count]>= self->_bufferSize)
  {
    location = [(NSMutableArray *)selfCopy->_accelBuffer firstObject];
    if (location)
    {
      [location x];
      selfCopy->_movingSum.x = selfCopy->_movingSum.x - v4;
      [location y];
      selfCopy->_movingSum.y = selfCopy->_movingSum.y - v5;
      [location z];
      selfCopy->_movingSum.z = selfCopy->_movingSum.z - v6;
      [(NSMutableArray *)selfCopy->_accelBuffer removeObject:location];
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    [(AccelerometerBuffer *)selfCopy _fillAccelBufferBeforeFirstSampleTimestamp:timestampCopy];
  }

  selfCopy->_movingSum.x = selfCopy->_movingSum.x + dataCopy.var0;
  selfCopy->_movingSum.y = selfCopy->_movingSum.y + dataCopy.var1;
  selfCopy->_movingSum.z = selfCopy->_movingSum.z + dataCopy.var2;
  v14 = selfCopy->_movingSum.z / selfCopy->_bufferSize;
  [(AccelerometerBuffer *)selfCopy localMaxAboveAverage];
  [(AccelerometerBuffer *)selfCopy setLocalMaxAboveAverage:fmax(v7, dataCopy.var2 - v14)];
  [(AccelerometerBuffer *)selfCopy localMinBelowAverage];
  [(AccelerometerBuffer *)selfCopy setLocalMinBelowAverage:fmin(v8, dataCopy.var2 - v14)];
  [(AccelerometerBuffer *)selfCopy localMax];
  [(AccelerometerBuffer *)selfCopy setLocalMax:fmax(v9, dataCopy.var2)];
  [(AccelerometerBuffer *)selfCopy localMin];
  [(AccelerometerBuffer *)selfCopy setLocalMin:fmin(v10, dataCopy.var2)];
  accelBuffer = selfCopy->_accelBuffer;
  v11 = [AccelerometerData alloc];
  timestampCopy = [(AccelerometerData *)v11 initWithData:dataCopy.var0 timestamp:dataCopy.var1, dataCopy.var2, timestampCopy];
  [(NSMutableArray *)accelBuffer addObject:?];
  MEMORY[0x277D82BD8](timestampCopy);
}

- (void)_fillAccelBufferBeforeFirstSampleTimestamp:(double)timestamp
{
  v6 = self->_bufferSize - 1;
  for (i = 0; i < v6; ++i)
  {
    accelBuffer = self->_accelBuffer;
    v4 = [[AccelerometerData alloc] initWithData:0.0 timestamp:0.0, 0.0, timestamp - ((v6 - i) / self->_sampleRate)];
    [(NSMutableArray *)accelBuffer addObject:?];
    MEMORY[0x277D82BD8](v4);
  }
}

- (void)resetMovingSum
{
  self->_movingSum.x = 0.0;
  self->_movingSum.y = 0.0;
  self->_movingSum.z = 0.0;
  [(AccelerometerBuffer *)self setLocalMaxAboveAverage:?];
  [(AccelerometerBuffer *)self setLocalMinBelowAverage:0.0];
  [(AccelerometerBuffer *)self setLocalMax:0.0];
  [(AccelerometerBuffer *)self setLocalMin:0.0];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)data
{
  firstObject = [(NSMutableArray *)self->_accelBuffer firstObject];
  [firstObject timestamp];
  v17 = v2;
  lastObject = [(NSMutableArray *)self->_accelBuffer lastObject];
  [lastObject timestamp];
  v18 = v3;
  [(AccelerometerBuffer *)self localMaxAboveAverage];
  v12 = v4;
  [(AccelerometerBuffer *)self localMinBelowAverage];
  v19 = v12 - v5;
  [(AccelerometerBuffer *)self localMax];
  v14 = v6;
  [(AccelerometerBuffer *)self localMin];
  v20 = v14 - v7;
  MEMORY[0x277D82BD8](lastObject);
  MEMORY[0x277D82BD8](firstObject);
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  result.var3 = v11;
  result.var2 = v10;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (id)logBuffer
{
  v35 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  v31 = 25;
  v26 = 0;
  v27 = &v26;
  v28 = 0x20000000;
  v29 = 32;
  v30 = 0;
  v8 = objc_alloc(MEMORY[0x277CBEB18]);
  v25 = [v8 initWithCapacity:v31];
  accelBuffer = selfCopy->_accelBuffer;
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __32__AccelerometerBuffer_logBuffer__block_invoke;
  v23 = &unk_279A20B18;
  v24[0] = MEMORY[0x277D82BE0](v25);
  v24[2] = v31;
  v24[1] = &v26;
  [(NSMutableArray *)accelBuffer enumerateObjectsUsingBlock:&v19];
  if ([v25 count])
  {
    v18 = AXLogBackTap();
    v17 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v6 = v27[3];
      v5 = [v25 componentsJoinedByString:@":"];
      location = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_3_8_32_8_0_8_64(v34, "[AccelerometerBuffer logBuffer]", v6, location);
      _os_log_impl(&dword_25E4AC000, v18, v17, "[PHOENIX] %s [ix=%lu] accelerometer[t,x,y,z]:%@", v34, 0x20u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v18, 0);
    [v25 removeAllObjects];
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = selfCopy->_accelBuffer;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __32__AccelerometerBuffer_logBuffer__block_invoke_41;
  v13 = &unk_279A20B40;
  v14 = MEMORY[0x277D82BE0](v15);
  [(NSMutableArray *)v4 enumerateObjectsUsingBlock:&v9];
  v3 = MEMORY[0x277D82BE0](v15);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v25, 0);
  _Block_object_dispose(&v26, 8);
  *MEMORY[0x277D85DE8];

  return v3;
}

void __32__AccelerometerBuffer_logBuffer__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22[3] = a3;
  v22[2] = a4;
  v22[1] = a1;
  v17 = MEMORY[0x277CCACA8];
  [location[0] timestamp];
  v14 = v4;
  [location[0] x];
  v15 = v5;
  [location[0] y];
  v16 = v6;
  [location[0] z];
  v22[0] = [v17 stringWithFormat:@"%.5f, %.5f, %.5f, %.5f", v14, v15, v16, v7];
  [*(a1 + 32) addObject:v22[0]];
  if ([*(a1 + 32) count] == *(a1 + 48))
  {
    v21 = AXLogBackTap();
    v20 = 1;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      log = v21;
      type = v20;
      v8 = *(*(*(a1 + 40) + 8) + 24);
      v11 = [*(a1 + 32) componentsJoinedByString:@":"];
      v19 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_3_8_32_8_0_8_64(v24, "[AccelerometerBuffer logBuffer]_block_invoke", v8, v19);
      _os_log_impl(&dword_25E4AC000, log, type, "[PHOENIX] %s [ix=%lu] accelerometer[t,x,y,z]:%@", v24, 0x20u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    [*(a1 + 32) removeAllObjects];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  objc_storeStrong(v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __32__AccelerometerBuffer_logBuffer__block_invoke_41(id *a1, void *a2, void *a3, void *a4)
{
  v18[4] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[3] = a3;
  v15[2] = a4;
  v15[1] = a1;
  v17[0] = @"timestamp";
  v6 = MEMORY[0x277CCABB0];
  [location[0] timestamp];
  v13 = [v6 numberWithDouble:?];
  v18[0] = v13;
  v17[1] = @"x";
  v7 = MEMORY[0x277CCABB0];
  [location[0] x];
  v12 = [v7 numberWithDouble:?];
  v18[1] = v12;
  v17[2] = @"y";
  v8 = MEMORY[0x277CCABB0];
  [location[0] y];
  v11 = [v8 numberWithDouble:?];
  v18[2] = v11;
  v17[3] = @"z";
  v9 = MEMORY[0x277CCABB0];
  [location[0] z];
  v10 = [v9 numberWithDouble:?];
  v18[3] = v10;
  v15[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  [a1[4] addObject:v15[0]];
  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)csv
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v6[0] appendString:{@"timestamp, x, y, z\n"}];
  accelBuffer = selfCopy->_accelBuffer;
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [(NSMutableArray *)accelBuffer enumerateObjectsUsingBlock:?];
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __26__AccelerometerBuffer_csv__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = a1[4];
  v3 = MEMORY[0x277CCABB0];
  [location[0] timestamp];
  v11 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x277CCABB0];
  [location[0] x];
  v10 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x277CCABB0];
  [location[0] y];
  v9 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x277CCABB0];
  [location[0] z];
  v8 = [v6 numberWithDouble:?];
  [v7 appendFormat:@"%@, %@, %@, %@\n", v11, v10, v9, v8];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(location, 0);
}

- (id)description
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CCAB68]);
  accelBuffer = selfCopy->_accelBuffer;
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [(NSMutableArray *)accelBuffer enumerateObjectsUsingBlock:?];
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __34__AccelerometerBuffer_description__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = a1[4];
  v4 = [location[0] description];
  [v3 appendFormat:@"%@\n", v4];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

@end