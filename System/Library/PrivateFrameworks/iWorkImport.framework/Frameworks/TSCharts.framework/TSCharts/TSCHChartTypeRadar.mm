@interface TSCHChartTypeRadar
- (Class)categoryAxisClass;
- (Class)chartLayoutItemClass;
- (NSString)name;
- (NSString)userInterfaceName;
- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)init;
- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)initWithFeatureClass:(Class)class;
- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)version readerVersion:(unint64_t *)readerVersion featureID:(id *)d;
- (id)defaultSeriesType:(unint64_t)type;
- (id)seriesTypeForSeriesElementType:(int)type defaultSeriesIndex:(unint64_t)index;
@end

@implementation TSCHChartTypeRadar

- (NSString)userInterfaceName
{
  mainBundle = [objc_opt_self() mainBundle];
  sub_2764B11E8();

  v3 = sub_2764B11F8();

  return v3;
}

- (NSString)name
{
  mainBundle = [objc_opt_self() mainBundle];
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

- (id)defaultSeriesType:(unint64_t)type
{
  radarAreaSeries = [objc_opt_self() radarAreaSeries];

  return radarAreaSeries;
}

- (id)seriesTypeForSeriesElementType:(int)type defaultSeriesIndex:(unint64_t)index
{
  selfCopy = self;
  v7 = [(TSCHChartTypeRadar *)selfCopy defaultSeriesType:index];
  if (type == 1)
  {
    radarAreaSeries = [objc_opt_self() radarAreaSeries];

    v7 = radarAreaSeries;
  }

  return v7;
}

- (id)alternateArchiveChartTypeAndReturnWriterVersion:(unint64_t *)version readerVersion:(unint64_t *)readerVersion featureID:(id *)d
{
  v5 = sub_2764A6990(version, readerVersion, d);

  return v5;
}

- (_TtC8TSChartsP33_9974A0D4784435EAA6E46641D25D8C6B18TSCHChartTypeRadar)initWithFeatureClass:(Class)class
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end