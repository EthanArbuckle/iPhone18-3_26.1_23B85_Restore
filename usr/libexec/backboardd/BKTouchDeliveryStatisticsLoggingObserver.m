@interface BKTouchDeliveryStatisticsLoggingObserver
- (BKTouchDeliveryStatisticsLoggingObserver)initWithLabel:(id)a3;
- (void)dealloc;
- (void)touch:(unsigned int)a3 didHitTestToDestination:(id)a4 hostingChainIndex:(int64_t)a5;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 downAtPoint:(CGPoint)a5 eventMask:(unsigned int)a6 transducerType:(unsigned int)a7;
- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 rangeOutAtPoint:(CGPoint)a5;
- (void)touchDidDetach:(unsigned int)a3 destinations:(id)a4;
- (void)touchDidFinishProcessingTouchCollection;
- (void)touchDidHIDCancel:(unsigned int)a3;
- (void)touchDidSoftCancel:(unsigned int)a3;
- (void)touchDidTransfer:(unsigned int)a3 destination:(id)a4;
- (void)touchWillStartProcessingTouchCollection;
@end

@implementation BKTouchDeliveryStatisticsLoggingObserver

- (void)dealloc
{
  [(BKEventStatisticsLoggingController *)self->_loggingController invalidate];
  v3.receiver = self;
  v3.super_class = BKTouchDeliveryStatisticsLoggingObserver;
  [(BKTouchDeliveryStatisticsLoggingObserver *)&v3 dealloc];
}

- (void)touchWillStartProcessingTouchCollection
{
  loggingController = self->_loggingController;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000077E8;
  v3[3] = &unk_1000FCF78;
  v3[4] = self;
  v3[5] = a2;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v3];
}

- (void)touchDidFinishProcessingTouchCollection
{
  loggingController = self->_loggingController;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000079B4;
  v3[3] = &unk_1000FD150;
  v3[4] = self;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v3];
}

- (void)touchDidSoftCancel:(unsigned int)a3
{
  loggingController = self->_loggingController;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100093FD4;
  v4[3] = &unk_1000FD150;
  v4[4] = self;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v4];
}

- (void)touchDidHIDCancel:(unsigned int)a3
{
  loggingController = self->_loggingController;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100094054;
  v4[3] = &unk_1000FD150;
  v4[4] = self;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v4];
}

- (void)touchDidTransfer:(unsigned int)a3 destination:(id)a4
{
  loggingController = self->_loggingController;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000940D4;
  v5[3] = &unk_1000FD150;
  v5[4] = self;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v5, a4];
}

- (void)touchDidDetach:(unsigned int)a3 destinations:(id)a4
{
  loggingController = self->_loggingController;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100094154;
  v5[3] = &unk_1000FD150;
  v5[4] = self;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v5, a4];
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 downAtPoint:(CGPoint)a5 eventMask:(unsigned int)a6 transducerType:(unsigned int)a7
{
  loggingController = self->_loggingController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10009429C;
  v8[3] = &unk_1000FCFA0;
  v8[4] = self;
  v8[5] = a4;
  v9 = a7;
  v10 = a6;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v8];
}

- (void)touch:(unsigned int)a3 pathIndex:(int64_t)a4 rangeOutAtPoint:(CGPoint)a5
{
  loggingController = self->_loggingController;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000943B4;
  v6[3] = &unk_1000FCF78;
  v6[4] = self;
  v6[5] = a4;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v6];
}

- (void)touch:(unsigned int)a3 didHitTestToDestination:(id)a4 hostingChainIndex:(int64_t)a5
{
  v7 = a4;
  loggingController = self->_loggingController;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094574;
  v10[3] = &unk_1000FD1A0;
  v12 = a3;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(BKEventStatisticsLoggingController *)loggingController updateStatistics:v10];
}

- (BKTouchDeliveryStatisticsLoggingObserver)initWithLabel:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = BKTouchDeliveryStatisticsLoggingObserver;
  v5 = [(BKTouchDeliveryStatisticsLoggingObserver *)&v58 init];
  if (v5)
  {
    v6 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"down"];
    touchDownCount = v5->_touchDownCount;
    v5->_touchDownCount = v6;

    v8 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"up"];
    touchUpCount = v5->_touchUpCount;
    v5->_touchUpCount = v8;

    v10 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"rangeIn"];
    rangeInCount = v5->_rangeInCount;
    v5->_rangeInCount = v10;

    v12 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"rangeOut"];
    rangeOutCount = v5->_rangeOutCount;
    v5->_rangeOutCount = v12;

    v14 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"HID cancel"];
    hardCancelCount = v5->_hardCancelCount;
    v5->_hardCancelCount = v14;

    v16 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"soft cancel"];
    softCancelCount = v5->_softCancelCount;
    v5->_softCancelCount = v16;

    v18 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"tapToWake"];
    tapToWakeCount = v5->_tapToWakeCount;
    v5->_tapToWakeCount = v18;

    v20 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"pencil"];
    stylusTouchCount = v5->_stylusTouchCount;
    v5->_stylusTouchCount = v20;

    v22 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"detached"];
    detachedTouchCount = v5->_detachedTouchCount;
    v5->_detachedTouchCount = v22;

    v24 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"transferred"];
    transferredTouchCount = v5->_transferredTouchCount;
    v5->_transferredTouchCount = v24;

    v26 = [(BKEventStatistic *)BKIntegerEventStatistic statisticWithLabel:@"fromEdge"];
    fromEdgeCount = v5->_fromEdgeCount;
    v5->_fromEdgeCount = v26;

    v28 = [BKHexadecimalIntegerEventStatistic statisticWithLabel:@"pathsSeen" hexFormatModifier:1];
    pathsSeen = v5->_pathsSeen;
    v5->_pathsSeen = v28;

    v30 = [BKHexadecimalIntegerEventStatistic statisticWithLabel:@"pathsStillTouching" hexFormatModifier:1];
    pathsStillTouching = v5->_pathsStillTouching;
    v5->_pathsStillTouching = v30;

    [(BKEventStatistic *)v5->_pathsStillTouching setAutomaticResetDisabled:1];
    v32 = [BKHexadecimalIntegerEventStatistic statisticWithLabel:@"pathsStillWithinRange" hexFormatModifier:1];
    pathsStillWithinRange = v5->_pathsStillWithinRange;
    v5->_pathsStillWithinRange = v32;

    [(BKEventStatistic *)v5->_pathsStillWithinRange setAutomaticResetDisabled:1];
    v34 = [BKAverageTimeIntervalEventStatistic statisticWithLabel:@"averageProcessingTime" scale:1000000];
    touchProcessingTimeAverage = v5->_touchProcessingTimeAverage;
    v5->_touchProcessingTimeAverage = v34;

    v36 = objc_alloc_init(BKTouchDestinationStatistic);
    destinations = v5->_destinations;
    v5->_destinations = v36;

    v38 = [@"touchstats " stringByAppendingString:v4];
    v39 = [BKEventStatisticsLoggingController alloc];
    v40 = BKLogTouchEvents();
    v41 = [(BKEventStatisticsLoggingController *)v39 initWithLabel:v38 logCategory:v40];
    loggingController = v5->_loggingController;
    v5->_loggingController = v41;

    v44 = v5->_loggingController;
    v43 = v5->_touchUpCount;
    v45 = v5->_rangeInCount;
    v59[0] = v5->_touchDownCount;
    v59[1] = v43;
    v46 = v5->_rangeOutCount;
    v47 = v5->_hardCancelCount;
    v59[2] = v45;
    v59[3] = v46;
    v48 = v5->_softCancelCount;
    v49 = v5->_stylusTouchCount;
    v50 = v5->_detachedTouchCount;
    v59[4] = v5->_tapToWakeCount;
    v59[5] = v49;
    v59[6] = v47;
    v59[7] = v48;
    v51 = v5->_transferredTouchCount;
    v59[8] = v5->_fromEdgeCount;
    v59[9] = v50;
    v52 = v5->_pathsSeen;
    v53 = v5->_pathsStillTouching;
    v59[10] = v51;
    v59[11] = v52;
    v55 = v5->_touchProcessingTimeAverage;
    v54 = v5->_destinations;
    v59[12] = v53;
    v59[13] = v54;
    v59[14] = v55;
    v56 = [NSArray arrayWithObjects:v59 count:15];
    [(BKEventStatisticsLoggingController *)v44 setStatistics:v56];
  }

  return v5;
}

@end