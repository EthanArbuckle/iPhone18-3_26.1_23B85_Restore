@interface BKMousePointerEventStatisticsLogger
- (BKMousePointerEventStatisticsLogger)init;
- (void)dealloc;
@end

@implementation BKMousePointerEventStatisticsLogger

- (void)dealloc
{
  [(BKEventStatisticsLoggingController *)self->_loggingController invalidate];
  v3.receiver = self;
  v3.super_class = BKMousePointerEventStatisticsLogger;
  [(BKMousePointerEventStatisticsLogger *)&v3 dealloc];
}

- (BKMousePointerEventStatisticsLogger)init
{
  v40.receiver = self;
  v40.super_class = BKMousePointerEventStatisticsLogger;
  v2 = [(BKMousePointerEventStatisticsLogger *)&v40 init];
  if (v2)
  {
    v3 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"move"];
    pointerEventCount = v2->_pointerEventCount;
    v2->_pointerEventCount = v3;

    v5 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"scroll"];
    scrollSequenceCount = v2->_scrollSequenceCount;
    v2->_scrollSequenceCount = v5;

    v7 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"scale"];
    scaleSequenceCount = v2->_scaleSequenceCount;
    v2->_scaleSequenceCount = v7;

    v9 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"translation"];
    translationSequenceCount = v2->_translationSequenceCount;
    v2->_translationSequenceCount = v9;

    v11 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"rotation"];
    rotationSequenceCount = v2->_rotationSequenceCount;
    v2->_rotationSequenceCount = v11;

    v13 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"touchUp"];
    digitizerSequenceCount = v2->_digitizerSequenceCount;
    v2->_digitizerSequenceCount = v13;

    v15 = [(BKEventStatistic *)BKHexadecimalIntegerEventStatistic statisticWithLabel:@"lastContextID"];
    lastContextID = v2->_lastContextID;
    v2->_lastContextID = v15;

    v17 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"lastPID"];
    lastPID = v2->_lastPID;
    v2->_lastPID = v17;

    v19 = [BKMRUEventStatistics statisticsWithLabel:@"recentGlobalRoutes" capacity:100];
    globalRoutes = v2->_globalRoutes;
    v2->_globalRoutes = v19;

    v21 = [(BKEventStatistic *)BKHexadecimalIntegerEventStatistic statisticWithLabel:@"contextID"];
    lastGlobalRouteContextID = v2->_lastGlobalRouteContextID;
    v2->_lastGlobalRouteContextID = v21;

    v23 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"pid"];
    lastGlobalRoutePID = v2->_lastGlobalRoutePID;
    v2->_lastGlobalRoutePID = v23;

    v25 = [BKEventStatisticsLoggingController alloc];
    v26 = BKLogMousePointer();
    v27 = [(BKEventStatisticsLoggingController *)v25 initWithLabel:@"mouse" logCategory:v26];
    loggingController = v2->_loggingController;
    v2->_loggingController = v27;

    v29 = v2->_loggingController;
    v30 = v2->_scrollSequenceCount;
    v31 = v2->_scaleSequenceCount;
    v41[0] = v2->_pointerEventCount;
    v41[1] = v30;
    v32 = v2->_translationSequenceCount;
    v33 = v2->_rotationSequenceCount;
    v41[2] = v31;
    v41[3] = v32;
    v34 = v2->_digitizerSequenceCount;
    v35 = v2->_lastContextID;
    v41[4] = v33;
    v41[5] = v34;
    v36 = v2->_lastPID;
    v37 = v2->_globalRoutes;
    v41[6] = v35;
    v41[7] = v36;
    v41[8] = v37;
    v38 = [NSArray arrayWithObjects:v41 count:9];
    [(BKEventStatisticsLoggingController *)v29 setStatistics:v38];
  }

  return v2;
}

@end