@interface SDAHistogramMatrix
- (SDAHistogramMatrix)init;
- (void)enumerateBundleHistogram:(id)histogram;
- (void)print;
@end

@implementation SDAHistogramMatrix

- (SDAHistogramMatrix)init
{
  v5.receiver = self;
  v5.super_class = SDAHistogramMatrix;
  v2 = [(SDAHistogramMatrix *)&v5 init];
  if (v2)
  {
    v3 = [NSMutableDictionary dictionaryWithCapacity:50];
    [(SDAHistogramMatrix *)v2 setHistogram:v3];
  }

  return v2;
}

- (void)enumerateBundleHistogram:(id)histogram
{
  histogramCopy = histogram;
  histogram = self->_histogram;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027168;
  v7[3] = &unk_100065710;
  v8 = histogramCopy;
  v6 = histogramCopy;
  [(NSMutableDictionary *)histogram enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)print
{
  v3 = SALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Histogram Begin:", buf, 2u);
  }

  *buf = 0;
  v8 = buf;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027720;
  v6[3] = &unk_100065738;
  v6[4] = buf;
  [(SDAHistogramMatrix *)self enumerateBundleHistogram:v6];
  v4 = SALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v8 + 3);
    *v11 = 134217984;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Histogram End (%zu).", v11, 0xCu);
  }

  _Block_object_dispose(buf, 8);
}

@end