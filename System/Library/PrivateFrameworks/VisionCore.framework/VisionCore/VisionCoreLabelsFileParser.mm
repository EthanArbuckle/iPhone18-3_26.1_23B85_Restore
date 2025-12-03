@interface VisionCoreLabelsFileParser
+ (BOOL)isValidLabel:(id)label;
+ (BOOL)parseLabels:(id *)labels fromContentsOfURL:(id)l invalidLabelPlaceholderObject:(id)object validLabelIndexes:(id *)indexes error:(id *)error;
@end

@implementation VisionCoreLabelsFileParser

+ (BOOL)parseLabels:(id *)labels fromContentsOfURL:(id)l invalidLabelPlaceholderObject:(id)object validLabelIndexes:(id *)indexes error:(id *)error
{
  v39[19] = *MEMORY[0x1E69E9840];
  lCopy = l;
  objectCopy = object;
  v32 = lCopy;
  if (![lCopy fileSystemRepresentation])
  {
    if (error)
    {
      errorCopy = error;
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to open %@", v32];
      *errorCopy = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v26];
    }

    v20 = 0;
    goto LABEL_42;
  }

  errorCopy2 = error;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = objc_alloc_init(MEMORY[0x1E696AD50]);
  memset(&v34, 0, sizeof(v34));
  std::ifstream::basic_ifstream(v36);
  v13 = 0;
  while (2)
  {
    std::ios_base::getloc((v36 + *(v36[0] - 24)));
    v14 = std::locale::use_facet(&v35, MEMORY[0x1E69E5318]);
    v15 = (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v35);
    MEMORY[0x1E12C7F50](&v35, v36, 1);
    if (LOBYTE(v35.__locale_) != 1)
    {
      goto LABEL_20;
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      *v34.__r_.__value_.__l.__data_ = 0;
      v34.__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v34.__r_.__value_.__s.__data_[0] = 0;
      *(&v34.__r_.__value_.__s + 23) = 0;
    }

    v16 = 0;
    while (1)
    {
      v17 = *&v38[*(v36[0] - 24) + 4];
      v18 = v17[3];
      if (v18 != v17[4])
      {
        v17[3] = v18 + 1;
        LOBYTE(v17) = *v18;
        goto LABEL_11;
      }

      LODWORD(v17) = (*(*v17 + 80))(v17);
      if (v17 == -1)
      {
        break;
      }

LABEL_11:
      if (v15 == v17)
      {
        v19 = 0;
        goto LABEL_19;
      }

      std::string::push_back(&v34, v17);
      ++v16;
      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0 && v34.__r_.__value_.__l.__size_ == 0x7FFFFFFFFFFFFFF7)
      {
        v19 = 4;
        goto LABEL_19;
      }
    }

    if (v16)
    {
      v19 = 2;
    }

    else
    {
      v19 = 6;
    }

LABEL_19:
    std::ios_base::clear((v36 + *(v36[0] - 24)), *&v37[*(v36[0] - 24) + 16] | v19);
LABEL_20:
    v20 = (*&v37[*(v36[0] - 24) + 16] & 5) != 0;
    if ((*&v37[*(v36[0] - 24) + 16] & 5) != 0)
    {
      if (labels)
      {
        *labels = [v12 copy];
      }

      if (indexes)
      {
        *indexes = [v33 copy];
      }
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v34;
      }

      else
      {
        v22 = v34.__r_.__value_.__r.__words[0];
      }

      v23 = [v21 initWithUTF8String:v22];
      if ([self isValidLabel:v23])
      {
        [v33 addIndex:v13];
LABEL_28:
        [v12 addObject:v23];

        ++v13;
        continue;
      }

      if (objectCopy)
      {
        v24 = objectCopy;

        v23 = v24;
        goto LABEL_28;
      }

      if (errorCopy2)
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Line %lu of %@ contains an invalid label of %@", v13 + 1, lCopy, v23, v38];
        *errorCopy2 = [MEMORY[0x1E696ABC0] VisionCoreErrorForCorruptedResourceWithLocalizedDescription:v27];
      }
    }

    break;
  }

  v36[0] = *MEMORY[0x1E69E54C8];
  *(v36 + *(v36[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1E12C7F40](v37);
  std::istream::~istream();
  MEMORY[0x1E12C7FA0](v39);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

LABEL_42:
  return v20;
}

+ (BOOL)isValidLabel:(id)label
{
  labelCopy = label;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = labelCopy;
    if ([v4 length])
    {
      v5 = [v4 hasPrefix:@"CVML_UNKNOWN_"] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end