@interface (label:Int,keypoints:
- (uint64_t)MLMultiArray);
@end

@implementation (label:Int,keypoints:

- (uint64_t)MLMultiArray)
{
  result = lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator;
  if (!lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator);
    result = swift_getWitnessTable(&protocol conformance descriptor for Batches<A>.Iterator, v1);
    lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[(label: Int, keypoints: MLMultiArray)]>>, DataSample<Tensor, Tensor>>>.Iterator and conformance Batches<A>.Iterator = result;
  }

  return result;
}

@end