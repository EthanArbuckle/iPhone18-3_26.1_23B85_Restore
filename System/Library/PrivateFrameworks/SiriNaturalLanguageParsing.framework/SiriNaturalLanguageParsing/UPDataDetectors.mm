@interface UPDataDetectors
- (id)_matchSpansForDetectedDataArray:(__CFArray *)array label:(id)label;
- (id)initLoadFromDataDetectorsDirectoryPath:(id)path forLocale:(id)locale;
- (id)matchSpans:(id)spans;
- (id)matchSpansForDetectedData:(id)data;
- (id)matchSpansForUtterance:(id)utterance;
- (void)dealloc;
@end

@implementation UPDataDetectors

- (void)dealloc
{
  dataDetector = self->_dataDetector;
  if (dataDetector)
  {
    uaap::UPDataDetector::~UPDataDetector(dataDetector);
    MEMORY[0x223DC4D00]();
  }

  ddUsoMapper = self->_ddUsoMapper;
  if (ddUsoMapper)
  {
    v6 = self->_ddUsoMapper;
    std::vector<std::unique_ptr<uaap::AbstractDateTimeHandler>>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x223DC4D00](ddUsoMapper, 0x20C40960023A9);
  }

  v5.receiver = self;
  v5.super_class = UPDataDetectors;
  [(UPDataDetectors *)&v5 dealloc];
}

- (id)_matchSpansForDetectedDataArray:(__CFArray *)array label:(id)label
{
  labelCopy = label;
  array = [MEMORY[0x277CBEB18] array];
  if (CFArrayGetCount(array) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(array, 0);
    DDResultGetRange();
    memset(v10, 0, sizeof(v10));
    uaap::DDUsoMapper::toItemizedUsos(self->_ddUsoMapper, ValueAtIndex, v10);
  }

  return array;
}

- (id)matchSpansForDetectedData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dataDetectorResult = [dataCopy dataDetectorResult];
  label = [dataCopy label];
  v8 = [(UPDataDetectors *)selfCopy _matchSpansForDetectedDataArray:dataDetectorResult label:label];

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)matchSpansForUtterance:(id)utterance
{
  utteranceCopy = utterance;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  std::string::basic_string[abi:ne200100]<0>(__p, [utteranceCopy UTF8String]);
  uaap::UPDataDetector::matchSpans([(UPDataDetectors *)selfCopy dataDetector], __p, &v14);
  array = [MEMORY[0x277CBEB18] array];
  v7 = v14;
  for (i = v15; v7 != i; v7 += 40)
  {
    v9 = *(v7 + 23);
    if (v9 < 0)
    {
      v10 = *v7;
      v9 = *(v7 + 8);
    }

    else
    {
      v10 = v7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithCharacters:v10 length:v9];
    v12 = [(UPDataDetectors *)selfCopy _matchSpansForDetectedDataArray:*(v7 + 24) label:v11];
    [array addObjectsFromArray:v12];
  }

  v18 = &v14;
  std::vector<uaap::UPDataDetectorResult>::__destroy_vector::operator()[abi:ne200100](&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  objc_sync_exit(selfCopy);

  return array;
}

- (id)matchSpans:(id)spans
{
  spansCopy = spans;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  std::string::basic_string[abi:ne200100]<0>(__p, [spansCopy UTF8String]);
  uaap::UPDataDetector::matchSpans([(UPDataDetectors *)selfCopy dataDetector], __p, &v16);
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v17 - v16) >> 3)];
  v7 = v16;
  for (i = v17; v7 != i; v7 += 40)
  {
    v9 = *(v7 + 23);
    if (v9 < 0)
    {
      v10 = *v7;
      v9 = *(v7 + 8);
    }

    else
    {
      v10 = v7;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithCharacters:v10 length:v9];
    v12 = [UPDetectedData alloc];
    v13 = *(v7 + 24);
    *(v7 + 24) = 0;
    v14 = [(UPDetectedData *)v12 initWithLabel:v11 dataDetectorResult:v13];
    [v6 addObject:v14];
  }

  v20 = &v16;
  std::vector<uaap::UPDataDetectorResult>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)initLoadFromDataDetectorsDirectoryPath:(id)path forLocale:(id)locale
{
  v37[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  localeCopy = locale;
  v34.receiver = self;
  v34.super_class = UPDataDetectors;
  if ([(UPDataDetectors *)&v34 init])
  {
    v8 = pathCopy;
    __p[0] = [pathCopy UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v33, __p);
    memset(v32, 0, sizeof(v32));
    v31 = 0u;
    *v29 = 0u;
    memset(v30, 0, sizeof(v30));
    memset(v28, 0, sizeof(v28));
    *__p = 0u;
    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v35.__pn_, "addresses.cache");
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *&v36.__pn_.__r_.__value_.__l.__data_;
    v28[0] = v36.__pn_.__r_.__value_.__r.__words[2];
    *(&v36.__pn_.__r_.__value_.__s + 23) = 0;
    v36.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [16],void>(&v35.__pn_, "date_time.cache");
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v28[3]) < 0)
    {
      operator delete(v28[1]);
    }

    *&v28[1] = v36;
    *(&v36.__pn_.__r_.__value_.__s + 23) = 0;
    v36.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>(&v35.__pn_, "flights.cache");
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v30[0]) < 0)
    {
      operator delete(v29[0]);
    }

    *v29 = *&v36.__pn_.__r_.__value_.__l.__data_;
    v30[0] = v36.__pn_.__r_.__value_.__r.__words[2];
    *(&v36.__pn_.__r_.__value_.__s + 23) = 0;
    v36.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    memset(&v35, 0, sizeof(v35));
    std::string::append[abi:ne200100]<char const*,0>(&v35.__pn_, "currencies.cache", "");
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v30[3]) < 0)
    {
      operator delete(v30[1]);
    }

    *&v30[1] = v36;
    *(&v36.__pn_.__r_.__value_.__s + 23) = 0;
    v36.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>(&v35.__pn_, "numbers.cache");
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v32[0]) < 0)
    {
      operator delete(v31);
    }

    v31 = *&v36.__pn_.__r_.__value_.__l.__data_;
    v32[0] = *(&v36.__pn_.__r_.__value_.__l + 2);
    *(&v36.__pn_.__r_.__value_.__s + 23) = 0;
    v36.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&v35.__pn_, "phone_mobile.cache");
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v32[3]) < 0)
    {
      operator delete(v32[1]);
    }

    *&v32[1] = v36;
    *(&v36.__pn_.__r_.__value_.__s + 23) = 0;
    v36.__pn_.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    languageCode = [localeCopy languageCode];
    v10 = languageCode;
    std::string::basic_string[abi:ne200100]<0>(&v25, [languageCode UTF8String]);
    v11 = std::string::insert(&v25, 0, "addresses_");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v26, ".cache");
    v14 = v13->__r_.__value_.__r.__words[0];
    v37[0] = v13->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    *(&v35.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
    v35.__pn_.__r_.__value_.__r.__words[0] = v14;
    v35.__pn_.__r_.__value_.__l.__size_ = v37[0];
    *(&v35.__pn_.__r_.__value_.__s + 23) = v15;
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v36, 0);
    if (v35.__pn_.__r_.__value_.__s.__data_[0] && v35.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      std::string::operator=(__p, &v36.__pn_);
    }

    if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__pn_.__r_.__value_.__l.__data_);
    }

    localeIdentifier = [localeCopy localeIdentifier];
    v17 = localeIdentifier;
    std::string::basic_string[abi:ne200100]<0>(&v25, [localeIdentifier UTF8String]);
    v18 = std::string::insert(&v25, 0, "date_time_");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v26, ".cache");
    v21 = v20->__r_.__value_.__r.__words[0];
    v37[0] = v20->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    *(&v35.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
    v35.__pn_.__r_.__value_.__r.__words[0] = v21;
    v35.__pn_.__r_.__value_.__l.__size_ = v37[0];
    *(&v35.__pn_.__r_.__value_.__s + 23) = v22;
    std::__fs::filesystem::operator/[abi:ne200100](&v36.__pn_, &v33, &v35);
    if (SHIBYTE(v35.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    std::__fs::filesystem::__status(&v36, 0);
    if (v35.__pn_.__r_.__value_.__s.__data_[0] && v35.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      std::string::operator=(&v28[1], &v36.__pn_);
    }

    if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__pn_.__r_.__value_.__l.__data_);
    }

    operator new();
  }

  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

@end