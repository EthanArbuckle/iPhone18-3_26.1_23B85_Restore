@interface TSCHChartTypeRadar
- (Class)categoryAxisClass;
- (Class)chartLayoutItemClass;
- (NSString)name;
- (NSString)userInterfaceName;
- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)init;
- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)initWithFeatureClass:(Class)a3;
- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)a3 readerVersion:(unint64_t *)a4 featureID:(id *)a5;
- (id)defaultSeriesType:(unint64_t)a3;
- (id)seriesTypeForSeriesElementType:(int)a3 defaultSeriesIndex:(unint64_t)a4;
@end

@implementation TSCHChartTypeRadar

- (NSString)userInterfaceName
{
  v2 = [objc_opt_self() mainBundle];
  sub_2764B11E8();

  v3 = sub_2764B11F8();

  return v3;
}

- (NSString)name
{
  v2 = [objc_opt_self() mainBundle];
  sub_2764B11E8();

  v3 = sub_2764B11F8();

  return v3;
}

- (Class)chartLayoutItemClass
{
  v2 = objc_opt_self();

  return [v2 radarAreaLayoutItem];
}

- (Class)categoryAxisClass
{
  sub_2764A12F8(0, &qword_280A46428);

  return swift_getObjCClassFromMetadata();
}

- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)init
{
  sub_2764A12F8(0, &qword_280A46420);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5.receiver = self;
  v5.super_class = type metadata accessor for TSCHChartTypeRadar();
  return [(TSCHChartType *)&v5 initWithFeatureClass:ObjCClassFromMetadata];
}

- (id)defaultSeriesType:(unint64_t)a3
{
  v3 = [objc_opt_self() radarAreaSeries];

  return v3;
}

- (id)seriesTypeForSeriesElementType:(int)a3 defaultSeriesIndex:(unint64_t)a4
{
  v6 = self;
  v7 = [(TSCHChartTypeRadar *)v6 defaultSeriesType:a4];
  if (a3 == 1)
  {
    v8 = [objc_opt_self() radarAreaSeries];

    v7 = v8;
  }

  return v7;
}

- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)a3 readerVersion:(unint64_t *)a4 featureID:(id *)a5
{
  v5 = sub_2764A6990(a3, a4, a5);

  return v5;
}

- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)initWithFeatureClass:(Class)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end